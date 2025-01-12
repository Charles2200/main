import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier, [Widget? entryPage]) =>
    GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Center(
                  child: Image.asset(
                    'assets/images/5517434.png',
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          : entryPage ?? RegexWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Center(
                      child: Image.asset(
                        'assets/images/5517434.png',
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : entryPage ?? RegexWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'dataTypes',
          path: '/dataTypes',
          builder: (context, params) => DataTypesWidget(),
        ),
        FFRoute(
          name: 'Aapi',
          path: '/aapi',
          builder: (context, params) => AapiWidget(),
        ),
        FFRoute(
          name: 'IF_CONDITIONAL',
          path: '/ifConditional',
          builder: (context, params) => IfConditionalWidget(),
        ),
        FFRoute(
          name: 'testes',
          path: '/testes',
          builder: (context, params) => TestesWidget(),
        ),
        FFRoute(
          name: 'popup',
          path: '/popup',
          builder: (context, params) => PopupWidget(),
        ),
        FFRoute(
          name: 'tooltip',
          path: '/tooltip',
          builder: (context, params) => TooltipWidget(),
        ),
        FFRoute(
          name: 'carrosel_autoPlay',
          path: '/carroselAutoPlay',
          builder: (context, params) => CarroselAutoPlayWidget(),
        ),
        FFRoute(
          name: 'webView',
          path: '/webView',
          builder: (context, params) => WebViewWidget(),
        ),
        FFRoute(
          name: 'offline',
          path: '/offline',
          builder: (context, params) => OfflineWidget(),
        ),
        FFRoute(
          name: 'validaFormulario',
          path: '/validaFormulario',
          builder: (context, params) => ValidaFormularioWidget(),
        ),
        FFRoute(
          name: 'periodicAction',
          path: '/periodicAction',
          builder: (context, params) => PeriodicActionWidget(),
        ),
        FFRoute(
          name: 'validaNet',
          path: '/validaNet',
          builder: (context, params) => ValidaNetWidget(),
        ),
        FFRoute(
          name: 'codeExpression',
          path: '/codeExpression',
          builder: (context, params) => CodeExpressionWidget(),
        ),
        FFRoute(
          name: 'testesFabricio',
          path: '/testesFabricio',
          builder: (context, params) => TestesFabricioWidget(),
        ),
        FFRoute(
          name: 'multiDropDow',
          path: '/multiDropDow',
          builder: (context, params) => MultiDropDowWidget(),
        ),
        FFRoute(
          name: 'componetIA',
          path: '/componetIA',
          builder: (context, params) => ComponetIAWidget(),
        ),
        FFRoute(
          name: 'componentes',
          path: '/componentes',
          builder: (context, params) => ComponentesWidget(),
        ),
        FFRoute(
          name: 'codigo',
          path: '/codigo',
          builder: (context, params) => CodigoWidget(),
        ),
        FFRoute(
          name: 'setarValorNoInput',
          path: '/setarValorNoInput',
          builder: (context, params) => SetarValorNoInputWidget(),
        ),
        FFRoute(
          name: 'multiDD',
          path: '/multiDD',
          builder: (context, params) => MultiDDWidget(),
        ),
        FFRoute(
          name: 'textFielnoCodigo',
          path: '/textFielnoCodigo',
          builder: (context, params) => TextFielnoCodigoWidget(),
        ),
        FFRoute(
          name: 'constraint',
          path: '/constraint',
          builder: (context, params) => ConstraintWidget(),
        ),
        FFRoute(
          name: 'formatarJSON',
          path: '/formatarJSON',
          builder: (context, params) => FormatarJSONWidget(),
        ),
        FFRoute(
          name: 'sqlLite',
          path: '/sqlLite',
          builder: (context, params) => SqlLiteWidget(),
        ),
        FFRoute(
          name: 'calendario',
          path: '/calendario',
          builder: (context, params) => CalendarioWidget(),
        ),
        FFRoute(
          name: 'dragAndDrop',
          path: '/dragAndDrop',
          builder: (context, params) => DragAndDropWidget(),
        ),
        FFRoute(
          name: 'chart',
          path: '/chart',
          builder: (context, params) => ChartWidget(),
        ),
        FFRoute(
          name: 'reproduzirSom',
          path: '/reproduzirSom',
          builder: (context, params) => ReproduzirSomWidget(),
        ),
        FFRoute(
          name: 'listView',
          path: '/listView',
          builder: (context, params) => ListViewWidget(),
        ),
        FFRoute(
          name: 'dataTable',
          path: '/dataTable',
          builder: (context, params) => DataTableWidget(),
        ),
        FFRoute(
          name: 'dataType2',
          path: '/dataType2',
          builder: (context, params) => DataType2Widget(),
        ),
        FFRoute(
          name: 'aleatoria',
          path: '/aleatoria',
          builder: (context, params) => AleatoriaWidget(),
        ),
        FFRoute(
          name: 'regex',
          path: '/regex',
          builder: (context, params) => RegexWidget(),
        ),
        FFRoute(
          name: 'lauchURL',
          path: '/lauchURL',
          builder: (context, params) => LauchURLWidget(),
        ),
        FFRoute(
          name: 'testeAutomatizado',
          path: '/testeAutomatizado',
          builder: (context, params) => TesteAutomatizadoWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

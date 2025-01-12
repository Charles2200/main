// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';

Future<void> bloqueiaZoom() async {
  // Bloqueia o zoom enquanto estiver no aplicativo
  // Importa os pacotes necessários
  // Define a função para bloquear o zoom

  // Cria uma nova instância da classe MethodChannel
  final MethodChannel methodChannel = MethodChannel('lock_zoom_channel');

  // Chama o método específico da plataforma para bloquear o zoom
  methodChannel.invokeMethod('lockZoom');
}

import 'package:app_core/app_core.dart';
import 'package:capp_case/src/app.dart';
import 'package:capp_case/src/core/di/di.dart';
import 'package:flutter/material.dart';

void main() async {
  await appCoreConfigureDependencies();
  await cappCaseConfigureDependencies();
  runApp(const App());
}

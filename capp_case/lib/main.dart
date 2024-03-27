import 'package:app_core/app_core.dart';
import 'package:capp_case/firebase_options.dart';
import 'package:capp_case/src/app.dart';
import 'package:capp_case/src/core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  final widgetBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await appCoreConfigureDependencies();
  await cappCaseConfigureDependencies();
  runApp(const App());
}

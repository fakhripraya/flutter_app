// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBy6CpFohi-lSihi318b19j0nsiRbmd3xg',
    appId: '1:240644862410:web:0319d8d3b22c7b0a1a5f33',
    messagingSenderId: '240644862410',
    projectId: 'money-management-analytic',
    authDomain: 'money-management-analytic.firebaseapp.com',
    storageBucket: 'money-management-analytic.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCg-LMMGTsjLkrmZDaRrrtSmwRasGxOHOs',
    appId: '1:240644862410:android:326c529b0105a8fa1a5f33',
    messagingSenderId: '240644862410',
    projectId: 'money-management-analytic',
    storageBucket: 'money-management-analytic.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA73UScTSaIN5yerInVRXhC2kmU5HyJyZA',
    appId: '1:240644862410:ios:85c59453461c49201a5f33',
    messagingSenderId: '240644862410',
    projectId: 'money-management-analytic',
    storageBucket: 'money-management-analytic.appspot.com',
    iosBundleId: 'com.example.cappCase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA73UScTSaIN5yerInVRXhC2kmU5HyJyZA',
    appId: '1:240644862410:ios:0c9d118b6fbbfd511a5f33',
    messagingSenderId: '240644862410',
    projectId: 'money-management-analytic',
    storageBucket: 'money-management-analytic.appspot.com',
    iosBundleId: 'com.example.cappCase.RunnerTests',
  );
}

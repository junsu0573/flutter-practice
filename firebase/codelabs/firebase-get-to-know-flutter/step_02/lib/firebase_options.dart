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
    apiKey: 'AIzaSyBntbAjEHVlOW0wYL-ztZ0ukTSrGIg14Z0',
    appId: '1:510078259968:web:a8168a848c1f3e8a6fd9e5',
    messagingSenderId: '510078259968',
    projectId: 'fir-flutter-codelab-9068d',
    authDomain: 'fir-flutter-codelab-9068d.firebaseapp.com',
    storageBucket: 'fir-flutter-codelab-9068d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxvLU9MjXuToxmc2hNyH5l0pzY8iRLTZo',
    appId: '1:510078259968:android:706f5c8b398759196fd9e5',
    messagingSenderId: '510078259968',
    projectId: 'fir-flutter-codelab-9068d',
    storageBucket: 'fir-flutter-codelab-9068d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBf_ZbNYc4Uq9CyJkrc8OPHEkGfpaEm8VE',
    appId: '1:510078259968:ios:49b15d154b8b72176fd9e5',
    messagingSenderId: '510078259968',
    projectId: 'fir-flutter-codelab-9068d',
    storageBucket: 'fir-flutter-codelab-9068d.appspot.com',
    iosClientId:
        '510078259968-mvbm9hespenm3ks92j0mds7ogo2mk97l.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBf_ZbNYc4Uq9CyJkrc8OPHEkGfpaEm8VE',
    appId: '1:510078259968:ios:9c750192b294a5966fd9e5',
    messagingSenderId: '510078259968',
    projectId: 'fir-flutter-codelab-9068d',
    storageBucket: 'fir-flutter-codelab-9068d.appspot.com',
    iosClientId:
        '510078259968-9gvmp8fnr4dfu2ik3ai3le4t398nj0ob.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter.RunnerTests',
  );
}

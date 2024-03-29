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
    apiKey: 'AIzaSyC0aTDDiXb9euHb-7cWmQ_OdV-qw8JlIf4',
    appId: '1:1054564940658:web:e9f05992b5f0909b4a3beb',
    messagingSenderId: '1054564940658',
    projectId: 'project-4f34e',
    authDomain: 'project-4f34e.firebaseapp.com',
    storageBucket: 'project-4f34e.appspot.com',
    measurementId: 'G-8TZ0PPCFY3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzj8LMD7X0xWS07c0GajVq6yz84O7Vh8Y',
    appId: '1:1054564940658:android:315875f6f1b3b51b4a3beb',
    messagingSenderId: '1054564940658',
    projectId: 'project-4f34e',
    storageBucket: 'project-4f34e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCDEoEZgi3GCcN4h2VG4oOE42rw1syRz2Y',
    appId: '1:1054564940658:ios:53bd1ec36223b3fc4a3beb',
    messagingSenderId: '1054564940658',
    projectId: 'project-4f34e',
    storageBucket: 'project-4f34e.appspot.com',
    iosBundleId: 'com.example.project',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCDEoEZgi3GCcN4h2VG4oOE42rw1syRz2Y',
    appId: '1:1054564940658:ios:a2ff1e59e9cfbf344a3beb',
    messagingSenderId: '1054564940658',
    projectId: 'project-4f34e',
    storageBucket: 'project-4f34e.appspot.com',
    iosBundleId: 'com.example.project.RunnerTests',
  );
}

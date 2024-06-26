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
    apiKey: 'AIzaSyBYEQ0wRz-3F3EVbZcv1mTF_Xoo6RU2Rsk',
    appId: '1:763705274924:web:541307cd28e1937dfbd789',
    messagingSenderId: '763705274924',
    projectId: 'zegodbms',
    authDomain: 'zegodbms.firebaseapp.com',
    storageBucket: 'zegodbms.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAx6_Qi0QIuM6Uy02KBAwNDU8QW0EFqxE4',
    appId: '1:763705274924:android:becae6a524d52d58fbd789',
    messagingSenderId: '763705274924',
    projectId: 'zegodbms',
    storageBucket: 'zegodbms.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCuXI7Pt167H0JEkPry_0lFQURRnO0DG4w',
    appId: '1:763705274924:ios:52772980189e51c3fbd789',
    messagingSenderId: '763705274924',
    projectId: 'zegodbms',
    storageBucket: 'zegodbms.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCuXI7Pt167H0JEkPry_0lFQURRnO0DG4w',
    appId: '1:763705274924:ios:dd49badda557f47afbd789',
    messagingSenderId: '763705274924',
    projectId: 'zegodbms',
    storageBucket: 'zegodbms.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}

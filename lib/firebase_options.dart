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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAYT_gxC8zT9Nqe47DNmJGKjzndm8LasSk',
    appId: '1:34967683599:web:e71a2158d5e6ec6040d97a',
    messagingSenderId: '34967683599',
    projectId: 'slovozavr-193fe',
    authDomain: 'slovozavr-193fe.firebaseapp.com',
    storageBucket: 'slovozavr-193fe.appspot.com',
    measurementId: 'G-47N51BZ91S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCpH-MEjs7aJrKIkod4Jec-u14oG31BYIg',
    appId: '1:34967683599:android:e60d676c915de05a40d97a',
    messagingSenderId: '34967683599',
    projectId: 'slovozavr-193fe',
    storageBucket: 'slovozavr-193fe.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyChT7xMAJZohGcNxMVa0FXZVpIWY-TCJlA',
    appId: '1:34967683599:ios:921d2c4503ec24e840d97a',
    messagingSenderId: '34967683599',
    projectId: 'slovozavr-193fe',
    storageBucket: 'slovozavr-193fe.appspot.com',
    iosClientId: '34967683599-49q5va94npi6mah7di3bi4oug39a6ei1.apps.googleusercontent.com',
    iosBundleId: 'com.qmitry.slovozavr',
  );
}

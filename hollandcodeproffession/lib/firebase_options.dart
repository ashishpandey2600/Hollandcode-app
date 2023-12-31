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
    apiKey: 'AIzaSyDs56a6Rb0E7fSq29J8tL4ErTKbOOEIYBY',
    appId: '1:1068422586363:web:e4af1fbb4212c30511b55e',
    messagingSenderId: '1068422586363',
    projectId: 'hollandcodeproffession',
    authDomain: 'hollandcodeproffession.firebaseapp.com',
    storageBucket: 'hollandcodeproffession.appspot.com',
    measurementId: 'G-5V2WVYW32K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5KrOJKJRUg9VjdrupJfcERUKYtUW_2hA',
    appId: '1:1068422586363:android:af342578fa22372111b55e',
    messagingSenderId: '1068422586363',
    projectId: 'hollandcodeproffession',
    storageBucket: 'hollandcodeproffession.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkLp1yX-FM84NTT4-ENDlCh8MT2q2Wemw',
    appId: '1:1068422586363:ios:de2188471bf0d25211b55e',
    messagingSenderId: '1068422586363',
    projectId: 'hollandcodeproffession',
    storageBucket: 'hollandcodeproffession.appspot.com',
    iosBundleId: 'com.example.hollandcodeproffession',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCkLp1yX-FM84NTT4-ENDlCh8MT2q2Wemw',
    appId: '1:1068422586363:ios:a0c5f757653f4d0a11b55e',
    messagingSenderId: '1068422586363',
    projectId: 'hollandcodeproffession',
    storageBucket: 'hollandcodeproffession.appspot.com',
    iosBundleId: 'com.example.hollandcodeproffession.RunnerTests',
  );
}

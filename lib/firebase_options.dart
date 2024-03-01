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
    apiKey: 'AIzaSyB2u9aWlDCujgpZnvLO_XGh1sIeI8sIkYY',
    appId: '1:219743946975:web:4f511915cae7a94315416a',
    messagingSenderId: '219743946975',
    projectId: 'algorisys-heimdall',
    authDomain: 'algorisys-heimdall.firebaseapp.com',
    storageBucket: 'algorisys-heimdall.appspot.com',
    measurementId: 'G-1LT35DSPYJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJpa4u-n2KwsvH3zPsDxMSuhMUiqAE14M',
    appId: '1:219743946975:android:a9c447ef2de4e91715416a',
    messagingSenderId: '219743946975',
    projectId: 'algorisys-heimdall',
    storageBucket: 'algorisys-heimdall.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBXbhV2xHh1GiD2bGo6Z8EyC5Tz-8-crrs',
    appId: '1:219743946975:ios:4c4a2d9dbffc9ea815416a',
    messagingSenderId: '219743946975',
    projectId: 'algorisys-heimdall',
    storageBucket: 'algorisys-heimdall.appspot.com',
    iosBundleId: 'com.algorisys.flutterHeimdall',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBXbhV2xHh1GiD2bGo6Z8EyC5Tz-8-crrs',
    appId: '1:219743946975:ios:7112f5a2d46ec06715416a',
    messagingSenderId: '219743946975',
    projectId: 'algorisys-heimdall',
    storageBucket: 'algorisys-heimdall.appspot.com',
    iosBundleId: 'com.algorisys.flutterHeimdall.RunnerTests',
  );
}

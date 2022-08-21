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
    apiKey: 'AIzaSyB0cfCoUMPyD18Cf9XSdQQj7ru1L-w4CFk',
    appId: '1:340247617516:web:cf306fcc718ec4b5e92ac9',
    messagingSenderId: '340247617516',
    projectId: 'dev-markaz',
    authDomain: 'dev-markaz.firebaseapp.com',
    storageBucket: 'dev-markaz.appspot.com',
    measurementId: 'G-1VNTZFQNHX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrWli2QO2fsU9dw83fkxzV2TEYo_d8oTM',
    appId: '1:340247617516:android:f0c94a184518e914e92ac9',
    messagingSenderId: '340247617516',
    projectId: 'dev-markaz',
    storageBucket: 'dev-markaz.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA9LiBopkdKzCHONpPbQfh-oRDrugT8Y0w',
    appId: '1:340247617516:ios:34a8fac2aeac4eb2e92ac9',
    messagingSenderId: '340247617516',
    projectId: 'dev-markaz',
    storageBucket: 'dev-markaz.appspot.com',
    iosClientId: '340247617516-rkk36hem9ago9semlhl49k4shi653h1o.apps.googleusercontent.com',
    iosBundleId: 'com.devmarkaz.devmarkaz',
  );
}
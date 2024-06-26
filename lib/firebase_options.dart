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
    apiKey: 'AIzaSyBvpEi-XGHjKk-yuoSnqyHHOEF1cbZ0bgc',
    appId: '1:1095217244964:web:5a7156378bc74500e8a1b1',
    messagingSenderId: '1095217244964',
    projectId: 'talent-smart',
    authDomain: 'talent-smart.firebaseapp.com',
    databaseURL: 'https://talent-smart-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'talent-smart.appspot.com',
    measurementId: 'G-6GT9CEQ81V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAMnV1IdgkgzYIse5I8hsD3kEgnQ6Pltnk',
    appId: '1:1095217244964:android:07dd1495982bfcfbe8a1b1',
    messagingSenderId: '1095217244964',
    projectId: 'talent-smart',
    databaseURL: 'https://talent-smart-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'talent-smart.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCaTloK-qZR_lxM2p3aM-4sE27xG2gTj6I',
    appId: '1:1095217244964:ios:b494c68dad4139c2e8a1b1',
    messagingSenderId: '1095217244964',
    projectId: 'talent-smart',
    databaseURL: 'https://talent-smart-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'talent-smart.appspot.com',
    iosBundleId: 'com.example.talentSmart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCaTloK-qZR_lxM2p3aM-4sE27xG2gTj6I',
    appId: '1:1095217244964:ios:5c9e015cb8241a65e8a1b1',
    messagingSenderId: '1095217244964',
    projectId: 'talent-smart',
    databaseURL: 'https://talent-smart-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'talent-smart.appspot.com',
    iosBundleId: 'com.example.talentSmart.RunnerTests',
  );
}

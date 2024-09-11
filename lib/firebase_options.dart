// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBv43BgVWNtkJ8oVGMZnl0nYCvGNH9jZ10',
    appId: '1:1069291335900:web:a3fb0d112058efc70a4419',
    messagingSenderId: '1069291335900',
    projectId: 'loginpagewithfirebase-24175',
    authDomain: 'loginpagewithfirebase-24175.firebaseapp.com',
    storageBucket: 'loginpagewithfirebase-24175.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCjigkHS8v9MpnOhvk6j5ivL--fwqDP714',
    appId: '1:1069291335900:android:0395f40a7026270f0a4419',
    messagingSenderId: '1069291335900',
    projectId: 'loginpagewithfirebase-24175',
    storageBucket: 'loginpagewithfirebase-24175.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC6tRwcKB3nnGG3flRb5cipFcT5CbtEKOY',
    appId: '1:1069291335900:ios:2c802b9245ddab000a4419',
    messagingSenderId: '1069291335900',
    projectId: 'loginpagewithfirebase-24175',
    storageBucket: 'loginpagewithfirebase-24175.appspot.com',
    iosBundleId: 'com.example.loginPageWithFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC6tRwcKB3nnGG3flRb5cipFcT5CbtEKOY',
    appId: '1:1069291335900:ios:2c802b9245ddab000a4419',
    messagingSenderId: '1069291335900',
    projectId: 'loginpagewithfirebase-24175',
    storageBucket: 'loginpagewithfirebase-24175.appspot.com',
    iosBundleId: 'com.example.loginPageWithFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBv43BgVWNtkJ8oVGMZnl0nYCvGNH9jZ10',
    appId: '1:1069291335900:web:12c019bf4579c9710a4419',
    messagingSenderId: '1069291335900',
    projectId: 'loginpagewithfirebase-24175',
    authDomain: 'loginpagewithfirebase-24175.firebaseapp.com',
    storageBucket: 'loginpagewithfirebase-24175.appspot.com',
  );
}

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
    apiKey: 'AIzaSyDh8ggc3xt8jFmzeAGsbQ6z6EyiWyr6ywg',
    appId: '1:494902674827:web:a85b12d58c55f3d3281b8e',
    messagingSenderId: '494902674827',
    projectId: 'matter-of-movement',
    authDomain: 'matter-of-movement.firebaseapp.com',
    storageBucket: 'matter-of-movement.appspot.com',
    measurementId: 'G-80TF41E78L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVGXZNfCL47aVtRGhk_YIF6eCsxuj80s4',
    appId: '1:494902674827:android:d6fbed23c14852af281b8e',
    messagingSenderId: '494902674827',
    projectId: 'matter-of-movement',
    storageBucket: 'matter-of-movement.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDv0J3MJhdyI1V1jkV2mq7m45HBKzqZwQo',
    appId: '1:494902674827:ios:90c86243a4f7dd1b281b8e',
    messagingSenderId: '494902674827',
    projectId: 'matter-of-movement',
    storageBucket: 'matter-of-movement.appspot.com',
    iosClientId: '494902674827-826e4gejm4urpf4s1lr9f2ud2id9iagq.apps.googleusercontent.com',
    iosBundleId: 'com.example.matterofmovement',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDv0J3MJhdyI1V1jkV2mq7m45HBKzqZwQo',
    appId: '1:494902674827:ios:90c86243a4f7dd1b281b8e',
    messagingSenderId: '494902674827',
    projectId: 'matter-of-movement',
    storageBucket: 'matter-of-movement.appspot.com',
    iosClientId: '494902674827-826e4gejm4urpf4s1lr9f2ud2id9iagq.apps.googleusercontent.com',
    iosBundleId: 'com.example.matterofmovement',
  );
}

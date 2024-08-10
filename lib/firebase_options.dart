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
    apiKey: 'AIzaSyAjlHl6G8a__HVkSp9EKmsB9yClwmgSJfE',
    appId: '1:983714279585:web:c756228f83bcfcc19b00e0',
    messagingSenderId: '983714279585',
    projectId: 'chatapp-9d34d',
    authDomain: 'chatapp-9d34d.firebaseapp.com',
    storageBucket: 'chatapp-9d34d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC7i_vISaU8GN_-q97gw-N35lzPJc9DHjw',
    appId: '1:983714279585:android:a043d33ce10ff60a9b00e0',
    messagingSenderId: '983714279585',
    projectId: 'chatapp-9d34d',
    storageBucket: 'chatapp-9d34d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1FYiCV2F_sXrgYKNopZKE1wowjy-KhLU',
    appId: '1:983714279585:ios:402699578df6a1339b00e0',
    messagingSenderId: '983714279585',
    projectId: 'chatapp-9d34d',
    storageBucket: 'chatapp-9d34d.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );
}

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
    apiKey: 'AIzaSyAXuQZppig8RLtXqzxYP5wukEY94artQpY',
    appId: '1:1015603972862:web:17fb71f5f30f88251e73af',
    messagingSenderId: '1015603972862',
    projectId: 'chitty-chat-cfede',
    authDomain: 'chitty-chat-cfede.firebaseapp.com',
    storageBucket: 'chitty-chat-cfede.appspot.com',
    measurementId: 'G-7699HN5RW6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkPiSX4b91rbC00N0_dVjBuQ8b8Dk9kp8',
    appId: '1:1015603972862:android:b72236265413ec6d1e73af',
    messagingSenderId: '1015603972862',
    projectId: 'chitty-chat-cfede',
    storageBucket: 'chitty-chat-cfede.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBne_C1DuvWyQwZrsqJl80Kr0r7MJfmYro',
    appId: '1:1015603972862:ios:aa8e2a428241b5dc1e73af',
    messagingSenderId: '1015603972862',
    projectId: 'chitty-chat-cfede',
    storageBucket: 'chitty-chat-cfede.appspot.com',
    iosBundleId: 'com.captainrogers.chittychat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBne_C1DuvWyQwZrsqJl80Kr0r7MJfmYro',
    appId: '1:1015603972862:ios:aa8e2a428241b5dc1e73af',
    messagingSenderId: '1015603972862',
    projectId: 'chitty-chat-cfede',
    storageBucket: 'chitty-chat-cfede.appspot.com',
    iosBundleId: 'com.captainrogers.chittychat',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAXuQZppig8RLtXqzxYP5wukEY94artQpY',
    appId: '1:1015603972862:web:3ef82aaca6cf93801e73af',
    messagingSenderId: '1015603972862',
    projectId: 'chitty-chat-cfede',
    authDomain: 'chitty-chat-cfede.firebaseapp.com',
    storageBucket: 'chitty-chat-cfede.appspot.com',
    measurementId: 'G-1ECQCBDVNG',
  );
}
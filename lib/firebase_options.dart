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
    apiKey: 'AIzaSyDlL0sf04GnWI99b1B6r7isF2edzRGcEDE',
    appId: '1:450534550875:web:0582a5b7278682a0a0fe7e',
    messagingSenderId: '450534550875',
    projectId: 'insta-clone-md',
    authDomain: 'insta-clone-md.firebaseapp.com',
    storageBucket: 'insta-clone-md.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBjevgFDSnhfi8D58p8uDyFYH8nGBkPGtw',
    appId: '1:450534550875:android:0f55f17a077e7542a0fe7e',
    messagingSenderId: '450534550875',
    projectId: 'insta-clone-md',
    storageBucket: 'insta-clone-md.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOH1JYXXcYBNpxa972a-gLkt5rPPqFtTU',
    appId: '1:450534550875:ios:8bfc9a77c67ac762a0fe7e',
    messagingSenderId: '450534550875',
    projectId: 'insta-clone-md',
    storageBucket: 'insta-clone-md.appspot.com',
    iosClientId: '450534550875-ht7ej3t9r4jh7i807isbc20urct7t7d3.apps.googleusercontent.com',
    iosBundleId: 'com.ahmedalmubarak.instagramClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDOH1JYXXcYBNpxa972a-gLkt5rPPqFtTU',
    appId: '1:450534550875:ios:8bfc9a77c67ac762a0fe7e',
    messagingSenderId: '450534550875',
    projectId: 'insta-clone-md',
    storageBucket: 'insta-clone-md.appspot.com',
    iosClientId: '450534550875-ht7ej3t9r4jh7i807isbc20urct7t7d3.apps.googleusercontent.com',
    iosBundleId: 'com.ahmedalmubarak.instagramClone',
  );
}

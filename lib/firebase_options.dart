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
    apiKey: 'AIzaSyCdyvY829Y0q20A8qCyGuQeGJviLjzvMmU',
    appId: '1:165789069613:web:d4a19a0e87a97924b3a3a4',
    messagingSenderId: '165789069613',
    projectId: 'providertutorial-f733b',
    authDomain: 'providertutorial-f733b.firebaseapp.com',
    storageBucket: 'providertutorial-f733b.appspot.com',
    measurementId: 'G-JC7QWMRJ4S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvbwLFRpzCiEO9OoGhzE93PFrogJ8RUOE',
    appId: '1:165789069613:android:4bad92738ae2ad3fb3a3a4',
    messagingSenderId: '165789069613',
    projectId: 'providertutorial-f733b',
    storageBucket: 'providertutorial-f733b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCWux1d51O2XTUNSJIhUaaDqVYs_FBjQnI',
    appId: '1:165789069613:ios:fcc795c857498078b3a3a4',
    messagingSenderId: '165789069613',
    projectId: 'providertutorial-f733b',
    storageBucket: 'providertutorial-f733b.appspot.com',
    iosBundleId: 'com.example.providerCourse',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCWux1d51O2XTUNSJIhUaaDqVYs_FBjQnI',
    appId: '1:165789069613:ios:fcc795c857498078b3a3a4',
    messagingSenderId: '165789069613',
    projectId: 'providertutorial-f733b',
    storageBucket: 'providertutorial-f733b.appspot.com',
    iosBundleId: 'com.example.providerCourse',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCdyvY829Y0q20A8qCyGuQeGJviLjzvMmU',
    appId: '1:165789069613:web:d87a7301f3be401bb3a3a4',
    messagingSenderId: '165789069613',
    projectId: 'providertutorial-f733b',
    authDomain: 'providertutorial-f733b.firebaseapp.com',
    storageBucket: 'providertutorial-f733b.appspot.com',
    measurementId: 'G-P6HPRLS672',
  );
}

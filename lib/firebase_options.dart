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
    apiKey: 'AIzaSyB16Sigw-bLI_pwFkDfyfCbrBZzFafYLIg',
    appId: '1:638672007811:web:7d8080d641d5e65b01e1b6',
    messagingSenderId: '638672007811',
    projectId: 'my-ecommerce-app-1a331',
    authDomain: 'my-ecommerce-app-1a331.firebaseapp.com',
    storageBucket: 'my-ecommerce-app-1a331.appspot.com',
    measurementId: 'G-4SKPJ8NB1C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCiWztDpk0cwBCskp7qHM2a2D70pugcfGY',
    appId: '1:638672007811:android:8a42d5ffbece94a401e1b6',
    messagingSenderId: '638672007811',
    projectId: 'my-ecommerce-app-1a331',
    storageBucket: 'my-ecommerce-app-1a331.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCxbeJFrAA5NNt2W9xgiaWZ2z1bNCzKHRs',
    appId: '1:638672007811:ios:0167291f8cbdc3f401e1b6',
    messagingSenderId: '638672007811',
    projectId: 'my-ecommerce-app-1a331',
    storageBucket: 'my-ecommerce-app-1a331.appspot.com',
    iosBundleId: 'com.example.tStore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCxbeJFrAA5NNt2W9xgiaWZ2z1bNCzKHRs',
    appId: '1:638672007811:ios:0167291f8cbdc3f401e1b6',
    messagingSenderId: '638672007811',
    projectId: 'my-ecommerce-app-1a331',
    storageBucket: 'my-ecommerce-app-1a331.appspot.com',
    iosBundleId: 'com.example.tStore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB16Sigw-bLI_pwFkDfyfCbrBZzFafYLIg',
    appId: '1:638672007811:web:fa7a3775c0e8bdc501e1b6',
    messagingSenderId: '638672007811',
    projectId: 'my-ecommerce-app-1a331',
    authDomain: 'my-ecommerce-app-1a331.firebaseapp.com',
    storageBucket: 'my-ecommerce-app-1a331.appspot.com',
    measurementId: 'G-GT93YSQ0KD',
  );
}

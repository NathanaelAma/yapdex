// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD_NsS0rq90kdg8VT0_5bNncx4OItx5l8E',
    appId: '1:1058089107054:android:3bee4ee663add4f654707f',
    messagingSenderId: '1058089107054',
    projectId: 'yapdex',
    storageBucket: 'yapdex.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCRueqmITjrYpb65grt9FjDs6NlHWlCdd4',
    appId: '1:541605153087:ios:f7acff28cc2453e47eab8a',
    messagingSenderId: '541605153087',
    projectId: 'apparencekit-free',
    storageBucket: 'apparencekit-free.appspot.com',
    iosBundleId: 'com.example.apparenceKit',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDypRVUb9tp9inPfh_Kda2mn4EG90J_NbQ',
    appId: '1:1058089107054:web:049c7cd0fb68979b54707f',
    messagingSenderId: '1058089107054',
    projectId: 'yapdex',
    authDomain: 'yapdex.firebaseapp.com',
    storageBucket: 'yapdex.appspot.com',
  );

}

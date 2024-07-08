import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../firebase_options.dart';
import 'chat_app/chat_app.dart';
import 'services/app_services/local_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalService.initialisePrefs();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if (!kDebugMode) {
    try {
      FlutterError.onError = (errorDetails) {
        if (errorDetails.library == 'image resource service') {
          return;
        }
        FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      };

      /// Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };
    } catch (e) {
      log("Error Initialising Crashlytics:: $e");
    }
  }
  // await AppTrackingTransparency.requestTrackingAuthorization();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(
      const ProviderScope(
        child: ChatApp(),
      ),
    );
  });
}

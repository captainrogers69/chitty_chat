import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../config/themes/app_theme.dart';
import '../services/app_services/routing_service.dart';

// /// true sets Dark Mode [AppTheme.darkTheme]
// final themeStateProvider = StateProvider<bool>((ref) {
//   return true;
// });

class ChatApp extends HookConsumerWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      //430x × 932   //1290 × 2796
      designSize: MediaQuery.sizeOf(context),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (_, child) {
        return MaterialApp.router(
          title: 'Chit Chat',
          theme: AppTheme.darkTheme,
          darkTheme: AppTheme.darkTheme,
          routerConfig: ref.read(goRouting),
          debugShowCheckedModeBanner: false,
          // scaffoldMessengerKey: GlobalSnackBarKey.snackBarKey,
          // routeInformationParser: ref.read(goRouting).routeInformationParser,
          // routerDelegate: ref.read(goRouting).routerDelegate,
        );
      },
    );
  }
}

// static final GlobalKey<ScaffoldMessengerState> snackBarKey =
//       GlobalKey<ScaffoldMessengerState>();
// GlobalSnackBarKey.snackBarKey.currentState
//           ?.showSnackBar(SnackBar(content: Text(e.toString())));

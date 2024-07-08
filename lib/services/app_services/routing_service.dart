import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../chat_app/splash_screen.dart';
import '../../components/common/route_error.dart';
import '../../presentation/auth/screen/auth_screen.dart';
import '../../utils/constants/k_routes.dart';

/*
MyAppRouterConfig.rootNavigatorKey.currentContext?.pushNamed(
      MyAppRoutes.notificationResponsePage,
      extra: VisitorFromNotification.fromMap(jsonDecode(de
*/

final goRouting = Provider<GoRouter>((ref) {
  GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
  return GoRouter(
    initialLocation: "/",
    navigatorKey: navigationKey,
    observers: [
      KNavigatorObserver(),
    ],
    routes: <RouteBase>[
      GoRoute(
        name: KRoutes.splashScreen,
        path: '/',
        builder: (context, state) {
          log("current parameters :${state.pathParameters} :: Current Path: ${GoRouterState.of(context).uri}");
          // final visitorFromNotification =
          //     state.extra! as VisitorFromNotification;
          return const SplashScreen();
        },
      ),
      GoRoute(
        name: KRoutes.authScreen,
        path: KRoutes.authScreen,
        builder: (context, state) {
          log("current parameters :${state.pathParameters} :: Current Path: ${GoRouterState.of(context).uri}");
          return const AuthScreen();
        },
      ),
    ],
    errorBuilder: (context, state) {
      log("context widget: ${context.widget} :: context error: ${state.error} ");
      return const RouteError();
    },
  );
});
/* pageBuilder: (context, animation, secondaryAnimation) => WebViewScreen(item: item),
transitionsBuilder: (context, animation, secondaryAnimation, page) {
  var begin = 0.8;
  var end = 1.0;
  var curve = Curves.easeInOut;
  var scaleTween =
      Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  var fadeTween = Tween<double>(begin: 0.0, end: 1.0);
  return ScaleTransition(
    scale: animation.drive(scaleTween),
    child: FadeTransition(
      opacity: animation.drive(fadeTween),
      child: page,
    ),
  );
}, */

class KNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('======================= Did push route ${route.currentResult}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('======================= Did Pop route ${route.currentResult}');
  }
}

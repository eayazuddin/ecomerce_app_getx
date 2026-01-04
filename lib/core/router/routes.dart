import 'package:ecommerce_app/core/router/route_path.dart';
import 'package:ecommerce_app/utils/extention/app_extention.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/navigation/presentation/screen/bottom_nav.dart';
import '../../features/splash/splash_screen.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter initRoute = GoRouter(
    initialLocation: RoutePath.splashScreen.addBasePath,
    debugLogDiagnostics: true,
    navigatorKey: navigatorKey,
    routes: [
      ///======================= Initial Route =======================///
      GoRoute(
        name: RoutePath.splashScreen,
        path: RoutePath.splashScreen.addBasePath,
        pageBuilder: (context, state) {
          return _buildPageWithAnimation(
            child: const SplashScreen(),
            state: state,
          );
        },
      ),
   /*   GoRoute(
        name: RoutePath.onboardingScreen,
        path: RoutePath.onboardingScreen.addBasePath,
        pageBuilder: (context, state) {
          return _buildPageWithAnimation(
            child: const OnboardingScreen(),
            state: state,
          );
        },
      ),*/


      ///======================= Bottom NavBar Route Parent =======================///
      GoRoute(
        name: RoutePath.bottomNavBarScreen,
        path: RoutePath.bottomNavBarScreen.addBasePath,
        pageBuilder: (context, state) {
          return _buildPageWithAnimation(
            child: MainBottomNavScreen(
              index: state.extra != null && (state.extra is int?)
                  ? state.extra as int? ?? 0
                  : 0,
            ),
            state: state,
          );
        },
      ),
    ],
  );

  ///=================================== Page Transition =====================///

  static CustomTransitionPage _buildPageWithAnimation({
    required Widget child,
    required GoRouterState state,
  }) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 400),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        var tween = Tween(begin: begin, end: end);
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  static GoRouter get route => initRoute;
}

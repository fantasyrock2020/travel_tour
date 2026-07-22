import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/features.dart';
import 'app_routes.dart';
import 'router_observer.dart';

class AppRouter {
  AppRouter._();

  static final GoRouterObserver _routeObserver = GoRouterObserver();

  static final GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    observers: <NavigatorObserver>[_routeObserver],
    initialLocation: AppRoutes.splash,
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeHomePage();
        },
      ),
      GoRoute(
        path: AppRoutes.place,
        name: AppRoutes.place,
        builder: (BuildContext context, GoRouterState state) {
          return HomePlacePage(argument: state.uri.queryParameters);
        },
      ),
    ],
  );
}

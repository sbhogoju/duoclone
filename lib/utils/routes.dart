import 'package:duoclone/home/home.dart';
import 'package:duoclone/home/tabs/home.dart';
import 'package:duoclone/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();
  static const String splash = 'splash';
  static const String dashboard = '/dashboard';
  static const String language = '/language';
  static const String chest = '/chest';
  static const String dumbbell = '/dumbbell';
  static const String badge = '/badge';
  static const String options = '/options';
  static const String levels = 'levels';

  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return MaterialPage(
      key: state.pageKey,
      child: child,
    );
  }

  static final List<RouteBase> routes = <RouteBase>[
    GoRoute(
      name: splash,
      path: '/$splash',
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen(),
    ),
    StatefulShellRoute.indexedStack(
      parentNavigatorKey: rootNavigatorKey,
      builder: (BuildContext context, GoRouterState state,
          StatefulNavigationShell navigationShell) {
        return Home(
          navigationShell: navigationShell,
        );
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
                name: dashboard,
                path: '/dashboard',
                builder: (BuildContext context, GoRouterState state) {
                  return const HomeTab();
                },
                routes: <RouteBase>[
                  GoRoute(
                    name: levels,
                    path: 'levels',
                    builder: (BuildContext context, GoRouterState state) {
                      return const Placeholder();
                    },
                  ),
                ]),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: language,
              path: '/language',
              builder: (BuildContext context, GoRouterState state) {
                return const Placeholder();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: chest,
              path: '/chest',
              builder: (BuildContext context, GoRouterState state) {
                return const Placeholder();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: dumbbell,
              path: '/dumbbell',
              builder: (BuildContext context, GoRouterState state) {
                return const Placeholder();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: badge,
              path: '/badge',
              builder: (BuildContext context, GoRouterState state) {
                return const Placeholder();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: options,
              path: '/options',
              builder: (BuildContext context, GoRouterState state) {
                return const Placeholder();
              },
            ),
          ],
        ),
      ],
    ),
  ];
  static final GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/splash',
    routes: routes,
    overridePlatformDefaultLocation: true,
    debugLogDiagnostics: true,
  );
}

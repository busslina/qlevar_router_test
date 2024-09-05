import 'package:flutter/material.dart';
import 'package:qlevar_router_test/src/routes.dart';
import 'package:qlevar_router_test/src/screens/_lib.dart';
import 'package:qlevar_router_test/src/screens/profile.screen.dart';
import 'package:rearch/rearch.dart';
import 'package:routemaster/routemaster.dart';

RoutemasterDelegate appRouterDelegateCapsule(CapsuleHandle use) {
  final routes = use(routesCapsule);

  return use.memo(
    () => RoutemasterDelegate(routesBuilder: (context) => routes),
    [routes],
  );
}

RouteMap routesCapsule(CapsuleHandle use) => use.lazyValue(
      () => RouteMap(
        routes: {
          Routes.index: (routeData) => const MaterialPage(child: IndexScreen()),
          Routes.profile: (routeData) =>
              const MaterialPage(child: ProfileScreen()),
        },
      ),
    );

// RouteMap routesCapsule(CapsuleHandle use) => use.lazyValue(() => [
//       const QRoute(
//         path: Routes.index,
//         builder: IndexScreen.new,
//       ),
//       const QRoute(
//         path: Routes.profile,
//         builder: ProfileScreen.new,
//       ),
//     ]);

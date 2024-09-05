import 'package:qlevar_router/qlevar_router.dart';
import 'package:qlevar_router_test/src/routes.dart';
import 'package:qlevar_router_test/src/screens/_lib.dart';
import 'package:qlevar_router_test/src/screens/profile.screen.dart';
import 'package:rearch/rearch.dart';

QRouterDelegate appRouterDelegateCapsule(CapsuleHandle use) {
  final routes = use(routesCapsule);

  return use.memo(
    () => QRouterDelegate(routes),
    [routes],
  );
}

List<QRoute> routesCapsule(CapsuleHandle use) => use.lazyValue(() => [
      const QRoute(
        path: Routes.index,
        builder: IndexScreen.new,
      ),
      const QRoute(
        path: Routes.profile,
        builder: ProfileScreen.new,
      ),
    ]);

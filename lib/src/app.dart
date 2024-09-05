import 'package:flutter/material.dart';
import 'package:flutter_rearch/flutter_rearch.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:qlevar_router_test/src/router.dart';
import 'package:rearch/rearch.dart';

class App extends RearchConsumer {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetHandle use) {
    final routeInformationParser =
        use.lazyValue(() => const QRouteInformationParser());
    final routerDelegate = use(appRouterDelegateCapsule);

    return MaterialApp.router(
      routeInformationParser: routeInformationParser,
      routerDelegate: routerDelegate,
    );
  }
}

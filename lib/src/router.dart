import 'package:flutter/material.dart';
import 'package:qlevar_router_test/src/routes.dart';
import 'package:qlevar_router_test/src/screens/_lib.dart';
import 'package:qlevar_router_test/src/screens/profile.screen.dart';
import 'package:rearch/rearch.dart';

Map<String, Widget Function(BuildContext)> routesCapsule(CapsuleHandle use) =>
    use.lazyValue(
      () => {
        Routes.index: (context) => const IndexScreen(),
        Routes.profile: (context) => const ProfileScreen(),
      },
    );

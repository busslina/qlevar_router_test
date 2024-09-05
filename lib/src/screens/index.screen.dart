import 'package:flutter/material.dart';
import 'package:flutter_rearch/flutter_rearch.dart';
import 'package:qlevar_router_test/src/routes.dart';
import 'package:qlevar_router_test/src/side_effect_registrar.extension.dart';

const _name = 'Index';

class IndexScreen extends RearchConsumer {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetHandle use) {
    use.debugScreen(_name);

    return Center(
        child: Column(
      children: [
        const Text('Index screen'),
        ElevatedButton(
            onPressed: () => Navigator.of(context).pushNamed(Routes.profile),
            child: const Text('Profile')),
      ],
    ));
  }
}

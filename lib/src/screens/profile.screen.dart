import 'package:flutter/material.dart';
import 'package:flutter_rearch/flutter_rearch.dart';
import 'package:qlevar_router_test/src/side_effect_registrar.extension.dart';

const _name = 'Profile';

class ProfileScreen extends RearchConsumer {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetHandle use) {
    use.debugScreen(_name);

    return const Center(child: Text('Profile screen'));
  }
}

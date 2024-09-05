import 'package:rearch/rearch.dart';

extension _SideEffectRegistrarExt on SideEffectRegistrar {
  SideEffectRegistrar get use => this;
}

extension SideEffectRegistrarExt on SideEffectRegistrar {
  void debugScreen(String screenName) {
    use.effect(
      () {
        print('($screenName) Initializing');
        return () => print('($screenName) Disposing');
      },
      [],
    );
  }
}

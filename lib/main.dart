import 'package:flutter/material.dart';
import 'package:flutter_rearch/flutter_rearch.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:qlevar_router_test/src/app.dart';

main() {
  QR.setUrlStrategy();
  runApp(const RearchBootstrapper(child: App()));
}

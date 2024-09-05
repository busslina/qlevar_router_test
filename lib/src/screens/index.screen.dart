import 'package:flutter/material.dart';
import 'package:flutter_rearch/flutter_rearch.dart';

class IndexScreen extends RearchConsumer {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetHandle use) {
    return const Center(child: Text('Index screen'));
  }
}

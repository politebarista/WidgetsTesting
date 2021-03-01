import 'package:flutter/material.dart';

import 'SliverWidgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'widgets testing',
      home: SliverWidgets(),
    );
  }
}
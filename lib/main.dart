import 'package:flutter/material.dart';
import 'package:widgets_testing/animation_test.dart';
import 'package:widgets_testing/buttons.dart';
import 'package:widgets_testing/play_with_gesture_detector.dart';
import 'package:widgets_testing/play_with_ink_well.dart';
import 'package:widgets_testing/play_with_null.dart';
import 'package:widgets_testing/stateful_widgets_testing_and_snackbar.dart';
import 'package:widgets_testing/test_classes/some_math.dart';

// import 'google_maps_widget.dart';
import 'loading_screen.dart';
import 'order_history_item_widget.dart';
import 'sliver_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'widgets testing',
      home: Scaffold(
        appBar: AppBar(title: Text('testing'),),
        body: AnimationTest(),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class PlayWithGestureDetector extends StatefulWidget {
  @override
  _PlayWithGestureDetectorState createState() => _PlayWithGestureDetectorState();
}

class _PlayWithGestureDetectorState extends State<PlayWithGestureDetector> {
  String someText = 'hey';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (e) {
        someText = 'drag start';
        setState(() {

        });
      },
      child: Center(
        child: Text(someText),
      ),
    );
  }
}

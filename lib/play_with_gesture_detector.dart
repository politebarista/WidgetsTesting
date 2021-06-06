import 'package:flutter/material.dart';

class PlayWithGestureDetector extends StatefulWidget {
  @override
  _PlayWithGestureDetectorState createState() =>
      _PlayWithGestureDetectorState();
}

class _PlayWithGestureDetectorState extends State<PlayWithGestureDetector> {
  String someText = 'hey';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (e) {
        if (e.primaryDelta! > 10) {
          someText = 'drag start';
          print(e);
        }
        setState(() {});
      },
      child: Center(
        child: Container(
          width: 150,
          height: 150,
          color: Colors.green,
          child: Text(someText),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PlayWithInkWell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //   content: Text('Tap'),
          // ));
        },
        child: Container(
          padding: EdgeInsets.all(15),
          child: Text('whaaaaaaaaat?'),
        ),
      ),
    );
  }
}

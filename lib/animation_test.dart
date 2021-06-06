import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class AnimationTest extends StatefulWidget {

  @override
  _AnimationTestState createState() => _AnimationTestState();
}

class _AnimationTestState extends State<AnimationTest>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat();
  }

  double defAngle = 15;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: Column(
          children: [
            AnimatedBuilder(
              animation: _controller!,
              builder: (_, child) {
                return Transform.rotate(
                  angle: _controller!.value * 1.5 * 3.14,
                  child: child,
                );
              },
              child: Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              transform: Matrix4.identity()
                ..translate(12 / 2, 12 / 2)
                ..multiply(Matrix4.rotationZ(math.pi / 4))
                ..translate(-12 / 2,- 12 / 2),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}

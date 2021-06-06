import 'package:flutter/material.dart';
import 'package:widgets_testing/test_classes/some_math.dart';

class PlayWithNull extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // SomeMath someMath = SomeMath(1,2);
    SomeMath? someMath;
    bool isAppear = someMath?.first != null;

    int hello = 2;

    return Container(
      child: Center(
        child: Column(
          children: [
            Text('hey - ${isAppear.toString()}'),
            Text(hello.runtimeType.toString()),
          ],
        )
      ),
    );
  }
}

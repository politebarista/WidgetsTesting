import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

class SegmentTestingWidget extends StatelessWidget {
  Map<int, Widget> slidingSegmentWidgets = <int, Widget>{
    0: Text('how u doinh'),
    1: Text("hello"),
    3: Text("wasuuuuuuuuuuuuuuuup    asdasda"),
    4: Text('maaaaaan')
  };
  Map<int, Widget> materialSlidingSegmentWidgets = <int, Widget>{
    0: Text('how u doinh'),
    1: Text("hello"),

    3: Text("wasuuuuuuuuuuuuuuuup    asdasda"),
    4: Text('maaaaaan')
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CupertinoSlidingSegmentedControl(
            children: slidingSegmentWidgets,
            onValueChanged: (value) {},
            backgroundColor: Colors.lightGreen,
            thumbColor: Colors.red,
          ),
          SizedBox(height: 8),
          MaterialSegmentedControl(
            children: materialSlidingSegmentWidgets,
            borderRadius: 10,
            unselectedColor: Colors.white,
            selectedColor: Colors.lightGreen,
            disabledColor: Colors.pink,
            borderColor: Colors.brown,
          ),
        ],
      ),
    );
  }
}

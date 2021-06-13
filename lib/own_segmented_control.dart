import 'package:flutter/material.dart';

class OwnSegmentedControl extends StatefulWidget {
  @override
  _OwnSegmentedControlState createState() => _OwnSegmentedControlState();
}

class _OwnSegmentedControlState extends State<OwnSegmentedControl> {
  List segments = [
    'ыыыы',
    'ывфывы',
    'хаха',
  ];

  int currentSegment = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: EdgeInsets.all(6),
      child: Wrap(
        children: [
          for (int i = 0; i < segments.length; i++) ...[
            Padding(
              padding: EdgeInsets.only(right: i != segments.length ? 4 : 0),
              // child: _buildSegment(segments[i]),
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentSegment = i;
                  });
                },
                child: Container(
                  color: currentSegment == i ? Colors.pink : Colors.green,
                  child: Text(segments[i]),
                ),
              ),
            )
          ]
        ],
      ),
    );
  }

// Widget _buildSegment(String text) {
//   return InkWell(
//     onTap: () {},
//     child: Container(
//       color: Colors.pink,
//       child: Text(text),
//     ),
//   );
// }
}

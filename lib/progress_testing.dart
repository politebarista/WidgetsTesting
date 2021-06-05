import 'package:flutter/cupertino.dart';
import 'package:widgets_testing/progress_indicator_widget.dart';

class ProgressTesting extends StatelessWidget {
  const ProgressTesting({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: 50,
            child: ProgressIndicatorWidget(progressInPercantage: 40,),
          ),
        ],
      )
    );
  }
}

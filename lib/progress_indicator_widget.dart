import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final int progressInPercantage;

  ProgressIndicatorWidget({required this.progressInPercantage});

  @override
  Widget build(BuildContext context) {
    return progressInPercantage < 100
        ? _buildProgressWidget()
        : Container(child: Text('ошибка блин'));
  }

  Widget _buildProgressWidget() {
    final int remainingProgress = 100 - progressInPercantage;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double progressElementWidth = constraints.maxWidth / 100;
      return Container(
        width: 100,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 1; i <= progressInPercantage; i++) ...[
              Container(
                color: Colors.green,
                width: progressElementWidth,
              ),
            ],
            for (var j = 1; j <= remainingProgress; j++) ...[
              Container(
                color: Colors.grey,
                width: progressElementWidth,
              )
            ]
          ],
        ),
      );
    });
  }
}

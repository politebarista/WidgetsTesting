import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestingSemantic extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('h'),
          Semantics(
            readOnly: true,
            child: TextField(
              controller: textEditingController,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 16,),
          CupertinoActivityIndicator(),
        ],
      ),
    );
  }
}


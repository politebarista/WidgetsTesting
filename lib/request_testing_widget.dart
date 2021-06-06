import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:widgets_testing/test_classes/user.dart';

class RequestTestingWidget extends StatefulWidget {
  @override
  _RequestTestingWidgetState createState() => _RequestTestingWidgetState();
}

class _RequestTestingWidgetState extends State<RequestTestingWidget> {
  String userName = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('request testing'),
          MaterialButton(
            child: Text('get data'),
            color: Colors.lightGreen,
            onPressed: () async {
              final response = await http.get(Uri.parse(
                  'http://10.0.2.2:5000/login?login=iluha&password=krutoi')); // вместо http://127.0.0.1:5000/users, т.к у андоридов другой локалхост

              final decode = json.decode(response.body) as Map<String, dynamic>;

              var some = User.fromJson(decode);
              var asdasd = response.body;
              print(asdasd.runtimeType);
              userName = decode['login'];
              setState(() {});
            },
          ),
          Text(userName),
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
              final response = await http.get(Uri.parse('http://10.0.2.2:5000/login?login=iluha&password=krutoi')); // вместо http://127.0.0.1:5000/users, т.к у андоридов другой локалхост

              final decode = json.decode(response.body) as Map<String, dynamic>;

             print('check');
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

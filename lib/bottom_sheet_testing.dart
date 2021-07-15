import 'package:flutter/material.dart';

class BottomSheetTesting extends StatefulWidget {
  const BottomSheetTesting({Key? key}) : super(key: key);

  @override
  _BottomSheetTestingState createState() => _BottomSheetTestingState();
}

class _BottomSheetTestingState extends State<BottomSheetTesting> {
  Color containerColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('hello'),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SizedBox(
                      height: 120,
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                containerColor = containerColor == Colors.green
                                    ? Colors.yellow
                                    : Colors.green;
                                Navigator.pop(context);
                              });
                            },
                            child: Text('change bcg color'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return SizedBox(
                                      height: 50,
                                      child: Text('second bottom shhet'),
                                    );
                                  });
                            },
                            child: Text('show sec screen'),
                          ),
                        ],
                      ));
                },
              );
            },
            child: Text('open bottom sheet'),
          ),
        ],
      ),
    );
  }
}

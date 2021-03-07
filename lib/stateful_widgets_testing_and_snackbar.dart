import 'package:flutter/material.dart';

class StatefulWidgetsTestingAndSnackbar extends StatefulWidget {
  @override
  _StatefulWidgetsTestingAndSnackbarState createState() => _StatefulWidgetsTestingAndSnackbarState();
}

class _StatefulWidgetsTestingAndSnackbarState extends State<StatefulWidgetsTestingAndSnackbar> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('stateful testing'),
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              children: <Widget>[
                Text('Столько раз ты нажал на кнопку' + count.toString()),
                MaterialButton(
                  onPressed: () {
                    // setState(
                    //   () {
                    //     count++;
                    //   },
                    // );
                    count++;
                    setState(() {});
                  },
                  child: Text('hi'),
                  color: Colors.green.withOpacity(0.3),
                  hoverColor: Colors.red,
                  onLongPress: () {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('крутой?'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}

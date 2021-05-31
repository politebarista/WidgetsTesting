import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class TestingGeooderWidget extends StatefulWidget {
  const TestingGeooderWidget({Key key}) : super(key: key);

  @override
  _TestingGeooderWidgetState createState() => _TestingGeooderWidgetState();
}

class _TestingGeooderWidgetState extends State<TestingGeooderWidget> {
  Widget locationInfoWidget = Container();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Container(
              color: Colors.green,
              width: 100,
              height: 50,
              child: Text(
                'узнать локацию',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () {
              Future<String> text = workWithGeolocator();
              locationInfoWidget = buildLocationInfoWidget(text);
              setState(() {});
            },
          ),
          locationInfoWidget,
        ],
      ),
    ));
  }

  Widget buildLocationInfoWidget(Future<String> text) {
    return FutureBuilder<String>(
        future: text,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          return Container(
            color: Colors.blue,
            child: Text(
              snapshot.data,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          );
        });
  }

  Future<String> workWithGeolocator() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    await Geolocator.checkPermission();
    if (serviceEnabled == false) {
      return 'шок, геолокация выключена';
    } else {
      return 'не все еще';
    }
  }
}

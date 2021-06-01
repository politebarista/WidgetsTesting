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

  var someText;

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
              workWithGeolocator();
              locationInfoWidget = buildLocationInfoWidget(someText);
              setState(() {});
            },
          ),
          locationInfoWidget,
        ],
      ),
    ));
  }

  Widget buildLocationInfoWidget(String text) {

          return Container(
            color: Colors.blue,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),

        );
  }

  void workWithGeolocator() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    await Geolocator.checkPermission();
    if (serviceEnabled == false) {
      someText = 'надо включить геолокацию';
    } else {
      Position currentPosition = await Geolocator.getCurrentPosition();
      someText = "${currentPosition.latitude}, ${currentPosition.longitude}";
      var some = someText;
    }
  }
}

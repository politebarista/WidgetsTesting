import 'package:flutter/cupertino.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class PlayWithYandexMaps extends StatelessWidget {

  // YandexMapController yandexMapController = YandexMapController();
  // var some = yandexMapController.addPlacemark(placemark)

  @override
  Widget build(BuildContext context) {
    return buildSecondVersion();
  }

  Widget buildFirstVersion() {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        child: Expanded(
          child: YandexMap(),
        ),
      );
    });
  }

  Widget buildSecondVersion() {
    return Expanded(
        child: YandexMap(),
    );
  }
}

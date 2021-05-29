import 'package:flutter/cupertino.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class PlayWithYandexMaps extends StatelessWidget {
  const PlayWithYandexMaps({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: YandexMap(),
      ),
    );
  }
}

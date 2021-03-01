import 'package:flutter/material.dart';

class SliverWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('slivers'),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                child: Text('шашлык емае'),
              ),
            ),
            SliverAppBar(
              pinned: true,
              title: Image(
                image: NetworkImage(
                    'https://static.1000.menu/img/content/35508/shashlyk-po-kavkazski-iz-svininy_1559678139_6_max.jpg'),
              ),
              backgroundColor: Colors.red.withOpacity(0.0),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                height: 50,
                alignment: Alignment.center,
                color: Colors.orange[100*index%9],
                child: Text('list child # $index'),
              );
            }, childCount: 15))
          ],
        ));
  }
}

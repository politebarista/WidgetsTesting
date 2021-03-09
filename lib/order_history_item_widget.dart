import 'package:flutter/material.dart';

class OrderHistoryItemWidget extends StatelessWidget {
  final Color _backgroundColor = Colors.orange;
  final String _date = '25.05.2020';
  final int _orderNumber = 99;
  final String _orderStatus = 'Выдан';
  final String _orderAddress = 'Кирова';
  final String _orderType = 'Самовывоз';
  final int _orderPrice = 522;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 500,
        height: 100,
        color: _backgroundColor,
        child: Column(
          children: <Widget>[
            Text(_date),
            Row(
              children: <Widget>[
                Text('№$_orderNumber'),
                Text(_orderStatus),
              ],
            ),
            Row(
              children: <Widget>[
                Text(_orderAddress),
                Text(_orderType),
              ],
            ),
            Row(children: <Widget>[
              Text('Заказ на сумму:'),
              Text('$_orderPriceР')
            ],),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}

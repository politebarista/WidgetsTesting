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
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: _backgroundColor,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(_date),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('№$_orderNumber'),
                    Text('-'),
                    Text(_orderStatus),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_orderAddress),
                    Text('-'),
                    Text(_orderType),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Заказ на сумму:'),
                    Text('$_orderPriceР')
                  ],
                ),
                GestureDetector(
                  child: Container(
                    color: Colors.red,
                    child: Text('Оценить заказ'),
                  ),
                  onTap: () {},
                )
              ],
            ),
          )),
      onTap: () {},
    );
  }
}

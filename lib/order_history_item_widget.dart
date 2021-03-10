import 'package:flutter/material.dart';

class OrderHistoryItemWidget extends StatelessWidget {

  final Color _backgroundColor;
  final String _date; //
  final int _orderNumber; //
  final String _orderStatus; //
  final String _orderAddress; //
  final String _orderType;//
  final int _orderPrice;//
  final Color _priceColor;
  final Color _buttonColor;
  final Color _topTextColor;
  final Color _bottomTextColor;
  final Color _buttonTextColor;

  OrderHistoryItemWidget(
    this._backgroundColor,
    this._date,
    this._orderNumber,
    this._orderStatus,
    this._orderAddress,
    this._orderType,
    this._orderPrice,
    this._priceColor,
    this._buttonColor,
    this._topTextColor,
    this._bottomTextColor,
    this._buttonTextColor,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: _backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Container(
          padding: EdgeInsets.only(left: 8, top: 12, right: 8, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8),
                child: Row(
                  children: <Widget>[
                    _topText(_date, 14),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _topText('№$_orderNumber', 18),
                    _topText(_orderStatus),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _bottomText(_orderAddress),
                    _bottomText('-'),
                    _bottomText(_orderType),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _bottomText('Заказ на сумму:'),
                  Text(
                    '$_orderPrice Р',
                    style: TextStyle(
                      color: _priceColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 30,
                  decoration: BoxDecoration(
                    color: _buttonColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Оценить заказ',
                      style: TextStyle(color: _buttonTextColor),
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      onTap: () {},
    );
  }

  Widget _topText(String text, [double textSize = 16]) {
    return Text(
      text,
      style: TextStyle(color: _topTextColor, fontSize: textSize),
    );
  }

  Widget _bottomText(String text, [double textSize = 16]) {
    return Text(
      text,
      style: TextStyle(color: _bottomTextColor, fontSize: textSize),
    );
  }
}

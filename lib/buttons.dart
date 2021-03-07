import 'package:flutter/material.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  WhyFarther _selection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('buttons'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('hi!')),
              // заливает себя при нажатии
              IconButton(
                icon: Icon(Icons.save),
                onPressed: () {},
                color: Colors.pink,
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('outline'),
              ),
              PopupMenuButton<WhyFarther>(
                child: Container(
                  width: 120,
                  height: 120,
                  color: Colors.red,
                  child: Text('hello', textAlign: TextAlign.center,),
                ),
                onSelected: (WhyFarther result) {
                  setState(() {
                    _selection = result;
                  });
                },
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<WhyFarther>>[
                  const PopupMenuItem<WhyFarther>(
                    value: WhyFarther.harder,
                    child: Text('Working a lot harder'),
                  ),
                  const PopupMenuItem<WhyFarther>(
                    value: WhyFarther.smarter,
                    child: Text('Being a lot smarter'),
                  ),
                  const PopupMenuItem<WhyFarther>(
                    value: WhyFarther.selfStarter,
                    child: Text('Being a self-starter'),
                  ),
                  const PopupMenuItem<WhyFarther>(
                    value: WhyFarther.tradingCharter,
                    child: Text('Placed in charge of trading charter'),
                  ),
                ],
              ),
              Text(_selection.toString())
            ],
          ),
        ));
  }
}

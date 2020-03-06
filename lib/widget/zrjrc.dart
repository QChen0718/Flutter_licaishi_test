import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
class ZrjrcPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: new GridView.count(
        primary: false,
        padding:  EdgeInsets.only(left:Adapt.px(30),top: Adapt.px(25),right: Adapt.px(30)),
        crossAxisSpacing: Adapt.px(27),
        crossAxisCount: 3,
        childAspectRatio: 0.5,
        children: <Widget>[
           Column(
            children: <Widget>[
              Image.asset('images/zrjrc@2x.webp'),
              Text('增信'),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset('images/zrjrc@2x.webp'),
              Text('增信'),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset('images/zrjrc@2x.webp'),
              Text('增信'),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset('images/zrjrc@2x.webp'),
              Text('增信'),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset('images/zrjrc@2x.webp'),
              Text('增信'),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset('images/zrjrc@2x.webp'),
              Text('增信'),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset('images/zrjrc@2x.webp'),
              Text('增信'),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset('images/zrjrc@2x.webp'),
              Text('增信'),
            ],
          ),
        ],
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
class DealManager extends StatefulWidget{
  @override
  _DealManager createState() => _DealManager();
}
class _DealManager extends State<DealManager>{
  List<String> titles = ['订单','佣金','合同','存续','确认书'];
  List<String> images = [];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: new ListView.builder(
              itemCount: titles.length,
              itemBuilder: (context,index){
                return _cell(context,index);
              }
          ),
      ),
    );
  }
  Widget _cell(BuildContext context,int index){
      return Container(
        margin: EdgeInsets.only(left:Adapt.px(25),right: Adapt.px(25)),
        padding: EdgeInsets.only(top: Adapt.px(30),bottom: Adapt.px(30)),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xffC7C6C6),
              width: 1
            )
          )
        ),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(right: Adapt.px(15)),
                  child: Image.asset(
                    '',
                    width: Adapt.px(50),
                    height: Adapt.px(50),
                  ),
                ),
                new Text(
                  titles[index],
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: Adapt.px(34)
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                new RichText(
                    text: TextSpan(
                      text: '2000',
                      style: TextStyle(
                        color: Color(0xffFF6633),
                        fontSize: Adapt.px(34)
                      ),
                       children: [
                         new TextSpan(
                           text: '万',
                           style: TextStyle(
                             color: Color(0xffBEBCBF),
                             fontSize: Adapt.px(30)
                           )
                         )
                       ]
                    )
                ),
                new Container(
                  margin: EdgeInsets.only(left: Adapt.px(10)),
                  color: Colors.red,
                  child: new Image.asset(
                    '',
                    width: Adapt.px(14),
                    height: Adapt.px(23),
                  ),
                )
              ],
            )
          ],
        ),
      );
  }
}

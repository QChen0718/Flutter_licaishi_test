import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';

class StatisticsList extends StatefulWidget{
  @override
  _StatisticsListState createState() => _StatisticsListState();

}
class _StatisticsListState extends State<StatisticsList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: Adapt.px(10)),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(Adapt.px(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(right: Adapt.px(10)),
                  color: Color(0xffFF6633),
                  height: Adapt.px(22),
                  width: Adapt.px(6),
                ),
                new Text(
                  '访客排行',
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: Adapt.px(32)
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: Adapt.px(1),color: Color(0xffC7C6C6))
              )
            ),
          ),
          new Container(
            padding: EdgeInsets.all(15),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: Container(
                      padding: EdgeInsets.only(left: Adapt.px(50)),
                      child: new Text(
                        '用户',
                        style: TextStyle(
                          fontSize: Adapt.px(28),
                          color: Color(0xff999999)
                        ),
                      )
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(right: Adapt.px(100)),
                  child: new Text(
                    '本周次数',
                    style: TextStyle(
                        fontSize: Adapt.px(28),
                        color: Color(0xff999999)
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(right: Adapt.px(20)),
                  child: new Text(
                    '总次数',
                    style: TextStyle(
                        fontSize: Adapt.px(28),
                        color: Color(0xff999999)
                    ),
                  ),
                )
              ],
            ),
          ),
          new Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context,index){
                  return _cell(context,index);
                }),
              ),
        ],
      ),
    );
  }
 Widget _cell(BuildContext context ,int index){
    return new Container(
        margin: EdgeInsets.only(left: Adapt.px(52),right: Adapt.px(52)),
        padding: EdgeInsets.only(top: Adapt.px(15),bottom: Adapt.px(15)),
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color(0xffC7C6C6),width: Adapt.px(1))
          )
        ),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text(
              '1',
              style: TextStyle(
                color: Color(0xffFF6633),
                fontSize: Adapt.px(34)
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: Adapt.px(20),right: Adapt.px(15)),
              child: new Image.asset(
                  '',
                width: Adapt.px(96),
                height: Adapt.px(96),
              ),
            ),
            new Expanded(
                child: Text(
                  'Zoey',
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: Adapt.px(34)
                  ),
                )
            ),
            new Container(
                  alignment: Alignment.center,
                  width: Adapt.px(120),
                  margin: EdgeInsets.only(right: Adapt.px(90)),
                  child: new Text(
                    '0',
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: Adapt.px(34)
                    ),
                  ),
            ),
            new Container(
              alignment: Alignment.center,
              width: Adapt.px(84),
              child: new Text(
                '4',
                style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: Adapt.px(34)
                ),
              ),
            )
          ],
        ),
    );
  }
}
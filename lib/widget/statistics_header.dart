import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
class StaticsHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(Adapt.px(30)),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _items(),
      ),
    );
  }
  _items(){
    List<Widget> items = [];
    List<String> numbers = ['0','10','10'];
    List<String> titles = ['今日访客(人次)','本周访客(人次)','历史累计(人次)'];
    for(int i=0;i<titles.length;i++){
      items.add(_item(numbers[i], titles[i]));
    }
    return items;
  }
  _item(String number,String title){
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Text(
          number,
          style: TextStyle(
            fontSize: Adapt.px(34),
            color: Color(0xff333333)
          ),
        ),
        new Container(
          padding: EdgeInsets.only(top: Adapt.px(10)),
          child: new Text(
            title,
            style: TextStyle(
              fontSize: Adapt.px(24),
              color: Color(0xff999999)
            ),
          ),
        )
      ],
    );
  }
}
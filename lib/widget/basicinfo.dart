import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
class Basicinfo extends StatefulWidget{
  List<String> titles = ['姓名','性别','微信号','微信昵称','手机号','身份证号','来源','是否注册APP','实名认证','风险测评'];
  @override
  _BasicinfoState createState() => _BasicinfoState();
}
class _BasicinfoState extends State<Basicinfo>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MediaQuery.removePadding(
      removeTop: true,
        context: context,
        child: new ListView.builder(
            itemCount: 10,
            itemBuilder: (context,index){
              return _cell(context,index);
             },
        )
    );
  }
 Widget _cell(BuildContext context,int index){
      return new Container(
        margin: EdgeInsets.only(left: Adapt.px(25),right: Adapt.px(25)),
        height: Adapt.px(84),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text(
              widget.titles[index],
              style: TextStyle(
                color: Color(0xffB2B2B2),
                fontSize: Adapt.px(32)
              ),
            ),
            index == 5?
            new Row(
              children: <Widget>[
                new Text(
                  '王强',
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: Adapt.px(32)
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(left: Adapt.px(30)),
                  child: Image.asset(
                    'images/eye_open@3x.webp',
                    width: Adapt.px(31),
                    height: Adapt.px(20),
                  ),
                )
              ],
            ):index == 7?new Image.asset(
              'images/open_switch@3x.webp',
              width: Adapt.px(53),
              height: Adapt.px(29),
            ):new Text(
              '王强',
              style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: Adapt.px(32)
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xffC7C6C6),
              width: 1
            )
          )
        ),
        
      );
  }
}
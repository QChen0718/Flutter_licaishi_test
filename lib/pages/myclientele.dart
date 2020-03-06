

import 'package:flutter/material.dart';
import 'package:flutter_test2/common_widget/navbar.dart';
import 'package:flutter_test2/custom.dart';
import 'package:flutter_test2/widget/clientelist.dart';
import 'package:flutter_test2/widget/filter_item.dart';
import 'package:flutter_test2/widget/filterpage.dart';
import 'package:flutter_test2/widget/search_bar.dart';

///我的客户页面
class MyClientelePage extends StatefulWidget{
  @override
  _MyClientelePageState createState() => _MyClientelePageState();

}
class _MyClientelePageState extends State<MyClientelePage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(top: Adapt.px(88)),
          height: Adapt.px(88),
          child: NavBar(leftIcon: Image.asset('images/message_icon@3x.webp',width: Adapt.px(35),height: Adapt.px(35),),titleStr: '我的客户',titleColor: Color(0xff333333),rightIcons: _righticons(),leftButtonClick: _leftBtnClick
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: Adapt.px(10),color: Color(0xfff5f5f5))
            )
          ),
        ),
        new Container(
          margin: EdgeInsets.fromLTRB(Adapt.px(25), Adapt.px(32), Adapt.px(25), Adapt.px(32)),
          child: SearchBar(),
        ),
        new Padding(
            padding: EdgeInsets.only(bottom: Adapt.px(30)),
          child: FilterItem(sortbtnClick: _sortBtnClick,filterbtnClick: _filterBtnClick,),
        ),
        new Expanded(
            child: ClienteList()
        )
      ],
    );
  }
  _righticons(){
    List<Widget>icons = [];
    List<String> righticonnames= ['images/addpersion_icon@3x.webp'];
    righticonnames.forEach((str){
      icons.add(_righticon(str));
    });
    return icons;
  }
  _righticon(String content){
    return GestureDetector(
      onTap: (){

      },
      child: new Container(
        margin: EdgeInsets.only(right: Adapt.px(36)),
        child: Image.asset(
          content,
          width: Adapt.px(35),
          height: Adapt.px(35),
        ),
      ),
    );
  }
  void _leftBtnClick(){
    print('跳转到消息列表');
  }
  void _sortBtnClick(){
    print('排序按钮被点击');
  }
  void _filterBtnClick(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>FilterPage())
    );
  }
}
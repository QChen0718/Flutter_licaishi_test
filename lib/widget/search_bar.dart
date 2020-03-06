import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
class SearchBar extends StatefulWidget{
  @override
  _SearchBarState createState() => _SearchBarState();
  
}

class _SearchBarState extends State<SearchBar>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: BoxDecoration(
        color: Color(0xffF4F5F6),
        borderRadius: BorderRadius.circular(Adapt.px(28))
      ),
      height: Adapt.px(56),
      padding: EdgeInsets.only(left: Adapt.px(15),right: Adapt.px(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Image.asset(
              'images/search_icon@3x.webp',
            width: Adapt.px(25),
            height: Adapt.px(25),
          ),
          new Expanded(
              child: Container(
                padding: EdgeInsets.only(left: Adapt.px(15)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: '请输入客户名称或标签',
                      hintStyle: TextStyle(
                          color: Color(0xff9F9F9F),
                          fontSize: Adapt.px(24)
                      ),
                      focusedBorder: InputBorder.none,
                      disabledBorder:InputBorder.none,
                      enabledBorder:InputBorder.none,
                      contentPadding:EdgeInsets.only(bottom: Adapt.px(25))
                  ),
                ),
              ) ,
          ),
          new Image.asset(
            'images/close_icon@3x.webp',
            width: Adapt.px(25),
            height: Adapt.px(25),
          )
        ],
      ),
    );
  }
  
}
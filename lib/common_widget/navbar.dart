import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';

class NavBar extends StatefulWidget{
  final Image leftIcon; //左边图片按钮
  final bool isHiddenLeftIcon; //是否隐藏左边按钮
  final List<Widget> rightIcons; //右边按钮数组
  final String titleStr; //导航标题
  final Color titleColor; //标题颜色
  final void Function() leftButtonClick; //左侧按钮点击回调方法
  const NavBar({Key key, this.leftIcon, this.isHiddenLeftIcon, this.rightIcons, this.titleStr, this.leftButtonClick, this.titleColor }) : super(key: key);
  @override
  _NavBarState createState() => _NavBarState();

}
class _NavBarState extends State<NavBar>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Stack 层次布局
    // 第一个元素显示在最上面，后面的
    return new Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        new Center(
            child: new Text(
              widget.titleStr,
              style:  TextStyle(
                  color: widget.titleColor,
                  fontSize: Adapt.px(34)
              ),
              textAlign: TextAlign.center,
            )
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new GestureDetector(
                onTap: widget.leftButtonClick,
                child: Container(
                  padding: EdgeInsets.only(left: Adapt.px(36)),
                  child: widget.leftIcon,
                )
            ),
            new Row(
              children: widget.rightIcons,
            ),

          ],
        ),
      ],
    );
  }

}
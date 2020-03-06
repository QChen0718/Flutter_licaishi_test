import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';

class PopItem extends StatefulWidget {
  @override
  _PopItemState createState() => _PopItemState();
}

class _PopItemState extends State<PopItem> {
  String _titlestr = '默认排序';
  bool _isselect = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PopupMenuButton(
        onSelected: (str) {
          setState(() {
            _titlestr = str;
          });
        },
        child: new Container(
          child: Row(
            children: <Widget>[
              new Container(
                padding:
                    EdgeInsets.only(left: Adapt.px(10), right: Adapt.px(10)),
                child: Text(
                  _titlestr,
                  style: TextStyle(
                      color: Color(0xffFF6633), fontSize: Adapt.px(32)),
                ),
              ),
              new Image.asset(
                '',
                width: Adapt.px(20),
                height: Adapt.px(11),
              )
            ],
          ),
          decoration: BoxDecoration(
              border: Border.fromBorderSide(
                  BorderSide(color: Color(0xffBDBDBD), width: 1))),
        ),
        itemBuilder: (context) {
          return <PopupMenuEntry<String>>[
            PopupMenuItem(
                value: '默认排序',
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _titlestr == '默认排序'?Image.asset(
                      'images/select_filter_btn@3x.webp',
                      width: Adapt.px(22),
                      height: Adapt.px(16),
                    ):Image.asset(
                      '',
                      width: Adapt.px(22),
                      height: Adapt.px(16),
                    ),
                    Text(
                        '默认排序',
                      style: TextStyle(
                        color: _titlestr == '默认排序'?Color(0xffFF6633):Color(0xff666666),
                        fontSize: Adapt.px(26)
                      ),
                    ),
                  ],
                )
            ),
            PopupMenuItem(
                value: '最近跟进',
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _titlestr == '最近跟进'?Image.asset(
                      'images/select_filter_btn@3x.webp',
                      width: Adapt.px(22),
                      height: Adapt.px(16),
                    ):Image.asset(
                      '',
                      width: Adapt.px(22),
                      height: Adapt.px(16),
                    ),
                    Text(
                      '最近跟进',
                      style: TextStyle(
                          color: _titlestr == '最近跟进'?Color(0xffFF6633):Color(0xff666666),
                          fontSize: Adapt.px(26)
                      ),
                    ),
                  ],
                ),
            ),
             PopupMenuItem(
                 value: '最近访问',
                 height: 20,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     _titlestr == '最近访问'?Image.asset(
                       'images/select_filter_btn@3x.webp',
                       width: Adapt.px(22),
                       height: Adapt.px(16),
                     ):Image.asset(
                       '',
                       width: Adapt.px(22),
                       height: Adapt.px(16),
                     ),
                     Text(
                       '最近访问',
                       style: TextStyle(
                           color: _titlestr == '最近访问'?Color(0xffFF6633):Color(0xff666666),
                           fontSize: Adapt.px(26)
                       ),
                     ),
                   ],
                 )
             ),
             PopupMenuItem(
                 value: '最新添加',
                 height: 20,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     _titlestr == '最新添加'?Image.asset(
                       'images/select_filter_btn@3x.webp',
                       width: Adapt.px(22),
                       height: Adapt.px(16),
                     ):Image.asset(
                       '',
                       width: Adapt.px(22),
                       height: Adapt.px(16),
                     ),
                     Text(
                       '最新添加',
                       style: TextStyle(
                           color: _titlestr == '最新添加'?Color(0xffFF6633):Color(0xff666666),
                           fontSize: Adapt.px(26)
                       ),
                     ),
                   ],
                 ),
             ),
             PopupMenuItem(
                 value: '最新分配',
                 height: 20,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     _titlestr == '最新分配'?Image.asset(
                       'images/select_filter_btn@3x.webp',
                       width: Adapt.px(22),
                       height: Adapt.px(16),
                     ):Image.asset(
                       '',
                       width: Adapt.px(22),
                       height: Adapt.px(16),
                     ),
                     Text(
                       '最新分配',
                       style: TextStyle(
                           color: _titlestr == '最新分配'?Color(0xffFF6633):Color(0xff666666),
                           fontSize: Adapt.px(26)
                       ),
                     ),
                   ],
                 )
             )
          ];
        });
  }
}

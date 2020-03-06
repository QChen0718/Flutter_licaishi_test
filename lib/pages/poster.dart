import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test2/widget/topshare.dart';
import 'package:flutter_test2/widget/ycfjq.dart';
import 'package:flutter_test2/widget/zrjrc.dart';
import 'package:flutter_test2/custom.dart';

class PosterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _PosterPageState();
  }

}

class _PosterPageState extends State<PosterPage>{
  final List<Widget> navtitle = [new Column(
    children: <Widget>[
      Container(
        height: Adapt.px(96),
        child: Center(
          child: Text(
            '最热金融词',
            style: new TextStyle(
                fontSize: 16
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ],
  )
  ,new Column(
    children: <Widget>[
       Container(
          height: Adapt.px(96),
          child: Center(
            child: Text(
              '专题分享',
              style: new TextStyle(
                  fontSize: 16
              ),
              textAlign: TextAlign.center,
            ),
          ),
      ),
      ],
    ),
    new Column(
      children: <Widget>[
        Container(
          height: Adapt.px(96),
          child: Center(
            child: Text(
              '壹财富节气',
              style: new TextStyle(
                  fontSize: 16
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    )
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      // DefaultTabController 用来组装TabBar 及 TabBarView
      home: DefaultTabController(
          //设置选中的item
          initialIndex: 1,
          length: navtitle.length,
          child: Scaffold(
            appBar: AppBar(
              title: new Container(
                height: Adapt.px(88),
                child:new Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(left: Adapt.px(30)),
                      child: new GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: new Image.asset('images/red_back@3x.webp',width: Adapt.px(44),height: Adapt.px(44),),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: Adapt.px(233)),
                      child: Text('精品海报',style: TextStyle(color: Color(0xff333333),fontSize: Adapt.px(34)),textAlign: TextAlign.center,),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 5,color: Color(0xfff5f5f5)))
                ),
              ),
              //标题的左右间距，默认是16
              titleSpacing: 0,
              backgroundColor: Colors.white,
              elevation: 2,
//              iconTheme: IconThemeData(
//                  color: Colors.black
//              ),

              //添加导航栏
              bottom: TabBar(

                  tabs: navtitle,

                  indicatorColor: Colors.white,
//                  labelPadding: EdgeInsets.only(bottom: 20,top: 0),
                  labelColor: Color(0xffFF6633),
                  labelStyle: TextStyle(
                      color: Color(0xffFF6633),
                      fontSize: 18
                      ),
                  unselectedLabelColor: Color(0xff333333),
                  unselectedLabelStyle: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 16
                  ),
//              indicatorSize: TabBarIndicatorSize.label,
              onTap: (index){
                 _selectItem(index);
              },
              ),
            ),
            body: TabBarView(
                children: [
                  ZrjrcPage(),
                TopSharePage(),
                  YcfjqPage()
                ]
            )
          )
      ),
    );
  }
  void _selectItem(int index){
      setState(() {
       Widget current =  navtitle[index];

      });
  }
}
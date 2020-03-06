import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
class CoverDetailPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _CoverDetailPageState();
  }
  
}
class _CoverDetailPageState extends State<CoverDetailPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: new Stack(
        children: <Widget>[
          new Image.asset('images/poster_bg@3x.webp',width: Adapt.screenW(),height: Adapt.screenH(),fit: BoxFit.cover,
          ),
          Container(
            height: Adapt.px(240),
            width: double.infinity,
            child: new AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: new Text('分享海报',
                style: new TextStyle(
                    color: Colors.white,
                    fontSize: Adapt.px(34)
                ),
              ),
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top: Adapt.px(192)),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(left: Adapt.px(32),right: Adapt.px(23)),
                      child: Image.asset('images/photo_up@2x.webp',width: Adapt.px(60),height: Adapt.px(60),),
                    ),
                    new Image.asset('images/ycfjq_cover@2x.webp',width: Adapt.px(520),height: Adapt.px(927),),
                    new Container(
                      margin: EdgeInsets.only(left: Adapt.px(23),right: Adapt.px(32)),
                      child: new Image.asset('images/photo_next@2x.webp',width: Adapt.px(60),height: Adapt.px(60),),
                    )
                  ],
                ),
                new Container(
                  margin: EdgeInsets.only(top: Adapt.px(20)),
                  child: Text('小满',style: TextStyle(color: Colors.white,fontSize: Adapt.px(34)),),
                ),
                new Container(
                  margin: EdgeInsets.only(top: Adapt.px(30)),
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.only(left: Adapt.px(185)),
                        child: new Column(
                          children: <Widget>[
                            new Image.asset('images/alphaDown@2x.webp',width: Adapt.px(45),height: Adapt.px(48),),
                            new Container(
                              margin: EdgeInsets.only(top: Adapt.px(15)),
                              child: new Text('下载',style: TextStyle(color: Color(0xffFFFFFF),fontSize: Adapt.px(34)),),
                            ),
                          ],
                        ),
                      ),
                      new Container(
                        margin: EdgeInsets.only(left: Adapt.px(247)),
                        child: new Column(
                          children: <Widget>[
                            new Image.asset('images/alphaShare@2x.webp',width: Adapt.px(45),height: Adapt.px(48),),
                            new Container(
                              margin: EdgeInsets.only(top: Adapt.px(15)),
                              child: new Text('分享',style: TextStyle(color: Color(0xffffffff),fontSize: Adapt.px(34)),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  
}
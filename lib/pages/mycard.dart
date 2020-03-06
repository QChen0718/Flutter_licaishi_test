import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
import 'package:flutter_test2/pages/editCard.dart';
class MyCardPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyCardPageState();
  }

}

class _MyCardPageState extends State<MyCardPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text('我的名片',style: TextStyle(color: Color(0xff333333),fontSize: Adapt.px(34)),),
        leading: new GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: new Image.asset('images/red_back.webp'),
        ),

        backgroundColor: Colors.white,
      ),
      body: new Column(
        children: <Widget>[
         new Stack(
            children: <Widget>[
              new Container(
//                color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(Adapt.px(17))),
                ),
                margin: EdgeInsets.only(left: Adapt.px(35),right: Adapt.px(35),top: Adapt.px(12)),
                child: new Image.asset('images/card_photo@2x.webp',alignment: Alignment.topCenter,),
                width: Adapt.px(680),
                height: Adapt.px(743),
              ),
              new Container(
//                color: Colors.red,
                margin: EdgeInsets.only(left: Adapt.px(35), top: Adapt.px(480)),
                child: _infoCard(context),
              ),
            ],
          ),
          new Container(
            margin: EdgeInsets.only(top: Adapt.px(50)),
            child: Row(
              children: <Widget>[
                new FlatButton(
                    onPressed: (){
                      print('编辑名片');
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EditCardPage()));
                    }, 
                    child: new Stack(
                      children: <Widget>[
                        new Image.asset('images/editcard_bg@2x.webp',width: Adapt.px(310),height: Adapt.px(57),),
                        new Container(
                          margin: EdgeInsets.only(left: Adapt.px(90)),
                          child: Text('编辑名片',style: TextStyle(color: Color(0xffFCDFBB),fontSize: Adapt.px(32)),),
                        )
                      ],
                    ),
                ),
              ],
            ),
          ),
          new Row(

          )
        ],
      )
    );
  }
  Widget _infoCard(BuildContext context){
    return new Stack(
      children: <Widget>[
        new Image.asset('images/card_bg@2x.png',width: Adapt.px(680),height: Adapt.px(280),),
        new Container(
          margin: EdgeInsets.only(top: Adapt.px(30)),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(left: Adapt.px(139)),
                    child: Text('陶子',style: TextStyle(color: Color(0xffFCDFBB),fontSize: Adapt.px(48)),),
                  ),
                  new Container(
                    margin: EdgeInsets.only(left: Adapt.px(15)),
                    child: Text('高级理财经理',style: TextStyle(color: Color(0xff9C9C9C),fontSize: Adapt.px(28)),),
                  ),
                  new Container(
                    margin: EdgeInsets.only(left: Adapt.px(60)),
                    child: GestureDetector(
                      child: new Image.asset('images/phone_icon@2x.webp',width:Adapt.px(67),height: Adapt.px(67),),
                    ),
                  )
                ],
              ),
              new Container(
                margin: EdgeInsets.only(top: Adapt.px(40)),
                child: Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(left: Adapt.px(139)),
                     child: Column(
                        children: <Widget>[
                          new Text('12',style: TextStyle(color: Color(0xffFCDFBB),fontSize: Adapt.px(58)),),
                          new Container(
                            margin: EdgeInsets.only(top: Adapt.px(10)),
                            child: Text('服务客户(位)',style: TextStyle(color: Color(0xff9C9C9C),fontSize: Adapt.px(24)),),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: Adapt.px(60)),
                     color: Color(0xffD8D8D8),
                      width: Adapt.px(1),
                      height: Adapt.px(54),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: Adapt.px(60)),
                      child: Column(
                        children: <Widget>[
                          new Text('5.32',style: TextStyle(color: Color(0xffFCDFBB),fontSize: Adapt.px(58)),),
                          new Container(
                            margin: EdgeInsets.only(top: Adapt.px(10)),
                            child: Text('管理资产(万)',style: TextStyle(color: Color(0xff9C9C9C),fontSize: Adapt.px(24)),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        )
      ],
    );
  }
}
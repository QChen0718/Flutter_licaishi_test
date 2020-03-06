import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
class TopSharePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: new ListView.builder(

        itemCount: 20,
        itemBuilder: (context,index){
          return new Column(
            children: <Widget>[
               new Row(
                  children: <Widget>[
                    new Container(
                       margin: EdgeInsets.only(left: Adapt.px(30),top: Adapt.px(20),bottom: Adapt.px(20)),
                       child: new Image.asset('images/topshare_cover@2x.webp',width: Adapt.px(170) ,height: Adapt.px(94)),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: Adapt.px(40)),
                      child: new Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                         new Text('一图带你轻松看懂金交所',style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: Adapt.px(28)
                          ),),
                          new Text('一图带你轻松看懂金交所',style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: Adapt.px(24)
                          ),)
                      ],
                    ),
                  )
                ],
              ),
              new Container(
                color: Color(0xffC7C6C6),
                height: Adapt.px(1),
                margin: EdgeInsets.only(left: Adapt.px(15),right: Adapt.px(15)),
              )
            ],
          );

        },
      ),
    );
  }
}
// import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';

class SharejlPage extends StatefulWidget{
  @override
  _SharejlPageState createState() => _SharejlPageState();

}
class _SharejlPageState extends State<SharejlPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      itemCount: 10,
      itemBuilder: (context ,index){
          return _cellview(context, index);
       }
      );
  }
 Widget _cellview(BuildContext context, int index){
     return Container(
       padding: EdgeInsets.fromLTRB(Adapt.px(25), Adapt.px(40), Adapt.px(25), Adapt.px(40)),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           new Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,

               children:[
                 new Text(
                   '财经早知道2019-10-22',
                   style:TextStyle(
                       color: Color(0xff52B7FD)
                   ),
                 ),
                 new Text(
                   '10-22 14:57',
                   style: TextStyle(
                       color: Color(0xffCACACA)
                   ),
                 ),
               ]
           ),
           new Container(
             padding: EdgeInsets.only(top: Adapt.px(25)),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                 new Container(
                   alignment: Alignment.center,
                   height: Adapt.px(50),
                  child: RichText(
                    textAlign:TextAlign.center,
                    text: TextSpan(
                        text:'查看次数',
                        style:TextStyle(
                            color:Color(0xff666666),
                            fontSize: Adapt.px(30),
                        ),
                        children: [
                          TextSpan(
                            text:'5',
                            style:TextStyle(
                              fontSize:Adapt.px(46),
                              color: Color(0xffFF6633),
                            ),

                          )
                        ]
                    ),
                  ),
                 ),
                 new Container(
                    color: Color(0xffC7C6C6),
                    width: 0.5,
                   height: Adapt.px(40),
                 ),
                 new RichText(
                   text: TextSpan(
                       text:'查看次数',
                       style:TextStyle(
                           color:Color(0xff666666),
                           fontSize: Adapt.px(30)
                       ),
                       children: [
                         TextSpan(
                             text:'2',
                             style:TextStyle(
                                 fontSize:Adapt.px(46),
                                 color: Color(0xffFF6633)
                             )
                         )
                       ]
                   ),
                 )
               ],
             ),
           ),
         ],
       ),
       decoration: BoxDecoration(
         border: Border(
           bottom: BorderSide(
             color: Color(0xffC7C6C6),
             width: 0.5
           )
         )
       ),
     );

  }
}
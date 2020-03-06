import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
class ClienteleZJ extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: new ListView.builder(
            itemCount: 1,
            itemBuilder: (context,index){
              return _cell(context, index);
            }
        ),
      ),
    );
  }
  Widget _cell(BuildContext context,int index){
     return new Container(
       padding: EdgeInsets.all(Adapt.px(30)),
       child: new Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           new RichText(
               text: TextSpan(
                 text: '•',
                 style: TextStyle(
                   color: Color(0xffCACACA)
                 ),
                 children: [
                   new TextSpan(
                     text: '登录',
                     style: TextStyle(
                       color: Color(0xff333333),
                       fontSize: Adapt.px(32)
                     )
                   )
                 ]
               )
           ),
           new Container(
             child: new Text(
               '2020-02-28 14：50',
               style: TextStyle(
                 color: Color(0xff999999),
                 fontSize: Adapt.px(24)
               ),
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
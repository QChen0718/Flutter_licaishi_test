import 'package:flutter/material.dart';
import 'package:flutter_test2/pages/coverDetail.dart';
import 'package:flutter_test2/custom.dart';
class YcfjqPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: new GridView.count(
          crossAxisCount:3,
          childAspectRatio:0.5,
          crossAxisSpacing: Adapt.px(27),
          padding: EdgeInsets.only(left: Adapt.px(30),top: Adapt.px(25),right: Adapt.px(30)),
          children: <Widget>[
            new GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CoverDetailPage()));
              },
              child: Column(
                children: <Widget>[
                  Image.asset('images/ycfjq_cover@2x.webp'),
                  Text('立春',style: new TextStyle(color: Color(0xff333333),fontSize: Adapt.px(28)),)
                ],
              ),
            )
          ],
      ),
    );
  }
}
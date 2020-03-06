import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
class MyOrderPage extends StatefulWidget{
  @override
  _MyOrderPageState createState() => _MyOrderPageState();
  
}
class _MyOrderPageState extends State<MyOrderPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      width: Adapt.screenW(),
      margin: EdgeInsets.only(top: Adapt.px(10)),
      color: Colors.white,
      padding: EdgeInsets.all(Adapt.px(30)),
      child: new Column(
//        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(

            child: Text(
              '我的订单',
              style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: Adapt.px(34)
              ),
            ),
          ) ,
          new Wrap(
//          crossAxisAlignment:WrapCrossAlignment.center,
            spacing: Adapt.px(40),
            runSpacing: Adapt.px(30),
//            runAlignment: WrapAlignment.center,
            children: _items(),
          )
        ],
      ),
    );
  }
  _items(){
    List<Widget> items=[];
    List<String> titles = ['预约中','申请合同','待报单','待审核','报单成功','待结佣','结佣成功','失败','我的合同','产品持有'];
    titles.forEach((str){
      items.add(_item('', str));
    });
    return items;
  }
  _item(String imagename, String title){
   return new Container(
     width: Adapt.px(98),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         new Image.asset('',width: Adapt.px(35),height: Adapt.px(43),),
         new Text(title,
           style: TextStyle(
               color: Color(0xff333333),
               fontSize: Adapt.px(24)
           ),
           textAlign: TextAlign.center,
         )
       ],
     ),
   );
  }
}
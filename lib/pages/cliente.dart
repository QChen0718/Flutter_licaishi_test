import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
import 'package:flutter_test2/widget/my_order.dart';
class ClientePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Image.asset(
                'images/nav_backgroundimage@3x.webp',
                width: Adapt.screenW(),
                height: Adapt.px(288),
                fit: BoxFit.fill,
              ),
              new AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: new Text('我的',style: TextStyle(color: Colors.white),),
                actions: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(right: Adapt.px(30)),
                    child: Image.asset('images/persion_message@3x.webp',width: Adapt.px(58),height: Adapt.px(58),),
                  ) ,
                  new Container(
                    margin: EdgeInsets.only(right: Adapt.px(30)),
                    child: Image.asset('images/persion_set@3x.webp',width: Adapt.px(58),height: Adapt.px(58),),
                  )
                ],
                centerTitle: true,
              ),
              new Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: Adapt.px(298)),
                padding: EdgeInsets.only(left: Adapt.px(30),right: Adapt.px(30)),
                height: Adapt.px(186),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _items(context),
                ),
              ),
              new Container(
                margin: EdgeInsets.only(left:Adapt.px(55), top:Adapt.px(182), right: Adapt.px(55)),
                height: Adapt.px(184),
                child: Stack(
                  children: <Widget>[
                    new Image.asset(
                      'images/info_descbgimage@3x.webp',
                      width: Adapt.px(640),
                      height: Adapt.px(184),
                    ),
                    new Padding(
                      padding: EdgeInsets.fromLTRB(Adapt.px(57), Adapt.px(30), Adapt.px(57), Adapt.px(30)),
                      child: new Row(
                        children: <Widget>[
                          new Stack(
                            alignment: Alignment.bottomRight,
                            children: <Widget>[
                              new CircleAvatar(
                                radius: Adapt.px(64),
                                backgroundImage: new AssetImage('images/header_photo@3x.webp'),
                                backgroundColor: Colors.transparent,
                              ),
                              new Image.asset(
                                'images/normal_vip@3x.webp',
                                width: Adapt.px(39),
                                height: Adapt.px(39),
                              )
                            ],
                          ),
                          new Container(
                            margin: EdgeInsets.only(left: Adapt.px(20)),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  '宋飞',
                                  style: TextStyle(
                                      fontSize: Adapt.px(48),
                                      color: Color(0xff725000),
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                new Wrap(
                                  spacing: Adapt.px(24),
                                  children: <Widget>[
                                    new Container(
                                      alignment: Alignment.center,
                                      height: Adapt.px(38),
                                      padding: EdgeInsets.only(left: Adapt.px(20),right: Adapt.px(20)),
                                      decoration: BoxDecoration(
                                          color: Color(0xff977A32),
                                          borderRadius: BorderRadius.circular(Adapt.px(17))
                                      ),
                                      child: new Text(
                                        '会员特权',
                                        style: TextStyle(
                                            fontSize: Adapt.px(26),
                                            color: Color(0xffF2D89C)
                                        ),
                                      ),
                                    ),
                                    new Container(
                                      alignment: Alignment.center,
                                      height: Adapt.px(38),
                                      padding: EdgeInsets.only(left: Adapt.px(20),right: Adapt.px(20)),
                                      decoration: BoxDecoration(
                                          color: Color(0xff977A32),
                                          borderRadius: BorderRadius.circular(Adapt.px(17))
                                      ),
                                      child: new Text(
                                        '员工号',
                                        style: TextStyle(
                                            fontSize: Adapt.px(26),
                                            color: Color(0xffF2D89C)
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.only(top: Adapt.px(10)),
            padding: EdgeInsets.fromLTRB(Adapt.px(24), Adapt.px(12), Adapt.px(24), Adapt.px(12)),
            height: Adapt.px(114),
            color: Colors.white,
            child: new Row(
              children: <Widget>[
                new Image.asset(
                  'images/company_icon@3x.webp',
                  width: Adapt.px(90),
                  height: Adapt.px(90),
                ),
                new Container(
                  margin: EdgeInsets.only(left: Adapt.px(28)),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        '【交易作废】您提交的报单  国企信托-青白…',
                        style: TextStyle(
                          color: Color(0xff666666),
                          fontSize: Adapt.px(24)
                        ),
                      ),
                      new Text(
                        '【交易作废】您提交的报单  国企信托-青白…',
                        style: TextStyle(
                            color: Color(0xff666666),
                            fontSize: Adapt.px(24)
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          new MyOrderPage()
        ],
      )

    );
  }
  _items(BuildContext context){
    List<Widget> items=[];
    List<String> numbers=['658,500.00','6600','2','9818'];
    List<String> infos=['费用(万)','交易额(万)','足迹','金币'];
    for(int i=0; i<infos.length;i++)
      {
        items.add(_item(numbers[i], infos[i]));
      }
    return items;
  }
  _item(String number,String info){
    return Container(
      margin: EdgeInsets.only(bottom: Adapt.px(10)),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text(
            number,
            style: TextStyle(
                color: Color(0xff333333),
              fontSize: Adapt.px(34)
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top: Adapt.px(10)),
            child: new Text(
              info,
              style: TextStyle(
                color: Color(0xff999999),
                fontSize: Adapt.px(22)
              ),
            ),
          )
        ],
      ),
    );
  }
}
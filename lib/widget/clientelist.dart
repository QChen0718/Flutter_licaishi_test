import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
import 'package:flutter_test2/pages/clientedetail.dart';

class ClienteList extends StatefulWidget{
  @override
  _ClienteListState createState() => _ClienteListState();
  
}
class _ClienteListState extends State<ClienteList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              width: Adapt.screenW(),
              margin: EdgeInsets.fromLTRB(Adapt.px(25), Adapt.px(10), Adapt.px(25), Adapt.px(10)),
              child: new Container(
                padding: EdgeInsets.only(bottom: Adapt.px(10)),
                child: new Text(
                  '共890条记录',
                  style: TextStyle(
                      color: Color(0xff999999),
                      fontSize: Adapt.px(24)
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1,color: Color(0xffC7C6C6))
                  )
              ),
            ),
            new Expanded(
               child: MediaQuery.removePadding(
                 removeTop: true,
                   context: context,
                   child: new ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context,index){
                        return _cell(context, index);
                   }
               ))

            )
          ],
    );
  }
  _cell(BuildContext context,int index){
    return GestureDetector(
      onTap: (){
        //跳转到详情页面
        Navigator.push(context, MaterialPageRoute(builder: (context) => ClienteDetail()));
      },
      child: Container(
        padding: EdgeInsets.all(Adapt.px(25)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Image.asset(
              'images/header_photo@3x.webp',
              width: Adapt.px(108),
              height: Adapt.px(108),
            ),
            new Expanded(
              child: new Container(
                padding: EdgeInsets.only(left: Adapt.px(22)),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      child: new Text(
                        '王强',
                        style: TextStyle(
                            color: Color(0xff333333),
                            fontSize:Adapt.px(32)
                        ),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(top: Adapt.px(10),bottom: Adapt.px(10)),
                      child: new Text(
                        '最近访问：2020-02-24 15：47',
                        style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: Adapt.px(26)
                        ),
                      ),
                    ),
                    new Wrap(
                      spacing: Adapt.px(10),
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.only(left: Adapt.px(20),right: Adapt.px(20)),
                          child: Text(
                            '偏好房地产',
                            style: TextStyle(
                                color: Color(0xff666666),
                                fontSize: Adapt.px(24)
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Adapt.px(18)),
                              color: Color(0xffF5F5F5)
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.only(left: Adapt.px(20),right: Adapt.px(20)),
                          child: Text(
                            '拆迁户',
                            style: TextStyle(
                                color: Color(0xff666666),
                                fontSize: Adapt.px(24)
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Adapt.px(18)),
                              color: Color(0xffF5F5F5)
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(top: Adapt.px(40)),
              child: Column(
                children: <Widget>[
                  //富文本
                  new RichText(
                    text: TextSpan(
                        text: '1256',
                        style: TextStyle(
                            color: Color(0xffFF6633),
                            fontSize: Adapt.px(42)
                        ),
                        children: [
                          new TextSpan(
                              text:'万',
                              style: TextStyle(
                                  color: Color(0xffFF6633),
                                  fontSize: Adapt.px(24)
                              )
                          )
                        ]
                    ),
                  ),
                  new Text(
                    '累计交易',
                    style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: Adapt.px(24)
                    ),
                  )
                ],
              ),
            )

          ],
        ),
        decoration: BoxDecoration(
//          color: Colors.red,
            border: Border(
                bottom: BorderSide(
                    color: Color(0xffC7C6C6),
                    width: 1
                )
            )
        ),
      ),
    );
  }
}
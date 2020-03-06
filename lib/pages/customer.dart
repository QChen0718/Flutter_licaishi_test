import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
import 'package:flutter_test2/pages/marketing_assistant.dart';
import 'package:flutter_test2/widget/menuview.dart';
import 'package:flutter_test2/pages/mycard.dart';
import 'package:flutter_test2/pages/number_statistics_page.dart';
import 'package:flutter_test2/pages/poster.dart';
import 'package:flutter_test2/pages/producttj_page.dart';

List<String> _imagename = ['images/item_gzs@2x.webp','images/item_mp@2x.webp',
  'images/item_tj@2x.webp','images/item_cj@2x.webp','images/item_hb@2x.webp','images/item_video@2x.webp',
  'images/item_zs@2x.webp','images/item_ssf@2x.webp','images/item_qd@2x.webp'];
List<String> _titles = ['移动工作室','智能名片','产品推介','每日财经','精品海报','精彩视频','转发助手','随手发','敬请期待'];

class CustomerPage extends StatelessWidget{

  final title;


  const CustomerPage({Key key, this.title}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          title,
          style: new TextStyle(
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          new GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NumberStatisticsPage()));
            },
            child: Padding(
              padding: new EdgeInsets.only(right: 20),
              child: new Image.asset(
                'images/number_map@2x.webp',
                width: 19,
                height: 16,
              ),
            ),
          ),
        ],
      ),
      body: new Container(
        color: Colors.white,
        child: new Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Center(
                  child: new Container(
                    margin: EdgeInsets.all(10),
                    child: new Image.asset(
                      'images/number_bg@2x.webp',
                      width: Adapt.px(694),
                      height: Adapt.px(330),
                    ),
                  ),
                ),

                new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(left: 45,top: 50),
                      child: new Column(
                        children: <Widget>[
                          new Image.asset(
                              'images/number_icon@3x.webp',
                              width: Adapt.px(96),
                              height: Adapt.px(96),
                          ),
                          new Padding(
                              padding: EdgeInsets.only(top: 10),
                            child: new Text(
                              '获客数据',
                              style:new TextStyle(color: Colors.white,fontSize: 17,height: 1
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    new Container(
                        margin: EdgeInsets.only(top: 50,left: 40),
                      child:new Column(
                        children: <Widget>[
                          subwidget('日增', '累计客户(人)'),
                          new Container(
                            margin: EdgeInsets.only(top: 30),
                            child: subwidget('日增', '累计发布(次)'),
                          )
                        ],
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(top: 50,left: 40),
                      child: new Column(
                        children: <Widget>[
                          subwidget('日增', '累计访问(人)'),
                          new Container(
                            margin: EdgeInsets.only(top: 30),
                            child: subwidget('日增', '累计绑定客户数(人)'),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            new Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                new Container(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MarketingAssistant()));
                    },
                    child: marketingview(),
                  ) ,
                ),
                new Positioned(
                  right: 35,
                    child: new Container(
                      margin: EdgeInsets.only(left: Adapt.px(50)),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Text(
                            '10-22 14:57',
                            style: new TextStyle(
                                fontSize: Adapt.px(24),
                                color: Color(0xFFB2B2B2)
                            ),
                          ),
                          new Text(
                            '10-22 14:57',
                            style: new TextStyle(
                                fontSize: Adapt.px(24),
                                color: Color(0xFFB2B2B2)
                            ),
                          ),
                        ],
                      ),
                    ),
                ),
                new Positioned(
                    right: 15,
                    child: new Image.asset(
                        'images/icon_arrow@2x.webp',
                      width: Adapt.px(16),
                      height: Adapt.px(26),
                    ),


                )
              ],
            ),
            gamelistwidget()
          ],
        ),
      ),
    );
  }
  Widget subwidget(String number,String title){
    return  new Column(
        children: <Widget>[
          new Container(
            height: 24,
            child:new Text(number,style: new TextStyle(
                color: Color(0xFFB3C4EA),
                fontSize: 24,
                height: 1
             ),
            ),
          ),

          new Padding(
              padding: EdgeInsets.only(top: 5),
            child: new Text(title,style: new TextStyle(
                color: Color(0xFFB3C4EA),
                fontSize: 11,
                height: 1
              ),
            ),
          )
        ],
      );
  }
  //营销
  Widget marketingview(){
    return new Row(
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(left: 15),
          child: new Image.asset(
            'images/marketing@2x.webp',
            width: 46,
            height: 46,
          )
        ),
        new Container(
          margin: EdgeInsets.only(left: 10),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                  '• zoey浏览了我的移动工作室',
                style: new TextStyle(
                  fontSize: 12,
                  color: Color(0xFF333333)
                ),
              ),
              new Text(
                '• 慕浏览了我的文章转发｜国...',
                style: new TextStyle(
                    fontSize: 12,
                    color: Color(0xFF333333)
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }

  List<Container> _buildGridTitleList(int count){
      return new List<Container>.generate(count, (int index)=>
      new Container(
        margin: EdgeInsets.only(top: Adapt.px(20)),
        child: new Column(
          children: <Widget>[
            new Image.asset(
             _imagename[index],
              width: Adapt.px(75),
              height: Adapt.px(75),
            ),
            new Container(
                margin: EdgeInsets.only(top: Adapt.px(15)),
              child: new Text(_titles[index],
                style: new TextStyle(fontSize: 14,height: 1),
              ),
            )
          ],
        ),
      )
      );
    }
  Widget gamelistwidget(){
    return Container(
      width: Adapt.screenW(),
      height: Adapt.px(493),
      margin: EdgeInsets.only(top: 20),
      child: new GridView.builder(
        itemCount: _imagename.length,
        physics: new NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: Adapt.px(10),
          childAspectRatio: 1.5
        ),
        itemBuilder: (BuildContext context,int index){
          return new GestureDetector(
            onTap: (){
              if (index == 4){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>PosterPage()));
              }
              else if (index == 1){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCardPage()));
              }
              else if (index == 2){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProducttjPage()));
              }
            },
           child:_buildGridTitleList(9)[index] ,
        ) ;
      },

        padding: const EdgeInsets.all(4),
      )
    );
  }
}
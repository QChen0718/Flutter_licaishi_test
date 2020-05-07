import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
import 'package:flutter_test2/pages/sharejl.dart';
import 'package:flutter_test2/pages/statistics_page.dart';
import 'package:flutter_test2/widget/marketing_clues.dart';
class MarketingAssistant extends StatefulWidget{
  @override
  _MarketingAssistantState createState() => _MarketingAssistantState();
  
}

class _MarketingAssistantState extends State<MarketingAssistant> with SingleTickerProviderStateMixin {
  TabController _tabController ;
  //页面初始化的方法
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  //页面销毁的方法
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: new Container(
          height: Adapt.px(88),
          child:new Row(
            children: <Widget>[
              new Container(
                margin: EdgeInsets.only(left: Adapt.px(30)),
                child: new GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: new Image.asset('images/red_back@3x.webp',width: Adapt.px(44),height: Adapt.px(44),),
                ),
              ),
              new Container(
                margin: EdgeInsets.only(left: Adapt.px(233)),
                child: Text('营销助手',style: TextStyle(color: Color(0xff333333),fontSize: Adapt.px(34)),textAlign: TextAlign.center,),
              )
            ],
          ),

        ),
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: new Container(
        color: Colors.white,
        margin: EdgeInsets.only(top: Adapt.px(10)),
        child: new Column(
          children: <Widget>[
            new Container(
              child: TabBar(
                tabs: _itemtitles(),
                controller: _tabController,
                labelColor:Color(0xffFF6633),
                unselectedLabelColor: Color(0xff333333),
                labelPadding: EdgeInsets.only(top: 10,bottom: 10),
                indicatorColor: Color(0xffFF6633),
                indicatorWeight: Adapt.px(4),
                indicatorSize: TabBarIndicatorSize.label,
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xffC7C6C6),width: 0.5)
                ),
              ),
            ),
            Flexible(
              child: new TabBarView(
                children: [
                  MarketingClues(),
                  SharejlPage(),
                  StatisticsPage(),
                ],
                controller: _tabController,
              ),
            )
          ],
        ),
      )
    );
  }

  _itemtitles() {
    List<Widget> items = [];
    List<String> itemtitles = ['营销线索','分享记录','访客统计'];
    itemtitles.forEach((title){
      items.add(_item(title));
    });
    return items;
  }
  _item(String titlestr){
    return Text(
        titlestr,
      style: TextStyle(
//        color: Color(0xff333333),
        fontSize: Adapt.px(34)
      ),
    );
  }  
}


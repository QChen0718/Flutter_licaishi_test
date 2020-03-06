import 'package:flutter/material.dart';
import 'package:flutter_test2/common_widget/navbar.dart';
import 'package:flutter_test2/custom.dart';
import 'package:flutter_test2/widget/basicinfo.dart';
import 'package:flutter_test2/widget/clientelezj.dart';
import 'package:flutter_test2/widget/dealmanager.dart';
import 'package:flutter_test2/widget/dealset.dart';

class ClienteDetail extends StatefulWidget {
  @override
  _ClienteDetailState createState() => _ClienteDetailState();
}

class _ClienteDetailState extends State<ClienteDetail> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
   _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Column(
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Image.asset(
                'images/nav_backgroundimage@3x.webp',
                fit: BoxFit.fill,
                width: Adapt.screenW(),
                height: Adapt.px(436),
              ),
              new Padding(
                  padding: EdgeInsets.only(top: Adapt.px(88)),
                child: NavBar(
                  leftIcon: Image.asset(
                    'images/back_arrow@3x.webp',
                    width: Adapt.px(44),
                    height: Adapt.px(44),
                  ),
                  titleStr: '客户详情',
                  titleColor: Color(0xffffffff),
                  rightIcons: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(right: Adapt.px(30)),
                      child: new Image.asset(
                        'images/clientele_more_icon@3x.webp',
                        width: Adapt.px(43),
                        height: Adapt.px(7),
                      ),
                    ),
                  ],
                  leftButtonClick: _backClick,
                ),
              ),
              new Padding(
                padding:
                    EdgeInsets.only(top: Adapt.px(156), bottom: Adapt.px(10)),
                child: _headerView(context),
              )
            ],
          ),
           new Container(
             margin: EdgeInsets.only(left: Adapt.px(25),right: Adapt.px(25)),
             child: new TabBar(
                 controller: _tabController,
                 tabs: _tabswidget(),
                 labelColor: Color(0xffF36E27),
                 labelStyle: TextStyle(
                     fontSize: Adapt.px(Adapt.px(32))
                 ),
                 unselectedLabelColor: Color(0xff333333),
                 indicatorColor:Color(0xffF36E27),
                 indicatorWeight: Adapt.px(5),
                 labelPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                 indicatorSize:TabBarIndicatorSize.label
             ),
             decoration: BoxDecoration(
               border: Border(bottom: BorderSide(
                 color: Color(0xffC7C6C6),
                 width: 1
               ))
             ),
           ),
          new Flexible(
              child: new TabBarView(
                children: [
                  Basicinfo(),
                  Dealset(),
                  DealManager(),
                  ClienteleZJ()
                ],
                controller: _tabController,
              ),
          ),
        ],
      ),
    );
  }
  _tabswidget(){
    List<Widget> tabs =[];
    List<String> titls =['基本信息','交易设置','交易管理','客户足迹'];
    titls.forEach((content){
      tabs.add(_tabitem(content));
    });
    return tabs;
  }
  _tabitem(String str){
    return new Text(
      str,
      style: TextStyle(
        fontSize: Adapt.px(32),
      ),
        maxLines:1
    );
  }
  _backClick(){
    Navigator.pop(context);
  }
  Widget _headerView(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(left: Adapt.px(40), right: Adapt.px(40)),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'images/header_photo@3x.webp',
                width: Adapt.px(118),
                height: Adapt.px(118),
              ),
              new Container(
                padding: EdgeInsets.only(top: Adapt.px(20)),
                child: Text(
                  '个人标签',
                  style: new TextStyle(
                      color: Color(0xffC1B08D),
                      fontSize: Adapt.px(24)
                  ),
                ),
              ),
            ],
          ),
          new Expanded(
              child: new Container(
            padding: EdgeInsets.only(left: Adapt.px(30)),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  '王强',
                  style: TextStyle(
                      color: Color(0xffFFEAC0),
                      fontSize: Adapt.px(48),
                      fontWeight: FontWeight.bold),
                ),
                new Container(
                  child: new Text(
                    '最近访问：2020-02-24 17：23',
                    style: TextStyle(
                        color: Color(0xffC1B08D), fontSize: Adapt.px(22)),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: Adapt.px(40)),
                  child: Wrap(
                      spacing: Adapt.px(15),
                      runSpacing: Adapt.px(15),
                      children:_items(context)
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
   _items(BuildContext context){
    List<Widget> items = [];
    List<String> titles = ['偏好房地产','拆迁户','拆迁户','偏好房地产','偏好房地产','拆迁户',];
    titles.forEach((str){
      items.add(_item(str));
    });
    items.add(
      new Image.asset(
        'images/add_item@3x.webp',
        width: Adapt.px(34),
        height: Adapt.px(34),
      )
    );
    return items;
  }
  _item(String title){
    return new Container(
      padding: EdgeInsets.only(left: Adapt.px(13),right: Adapt.px(13)),
      child: new Text(
        title,
        style: new TextStyle(
          color: Color(0xffDEC58A),
          fontSize: Adapt.px(24)
        ),
      ),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
            BorderSide(
                width: 0.5,
                color: Color(0xff978455)
            ),
        ),
        borderRadius: BorderRadius.circular(Adapt.px(17))
      ),
    );
  }
}

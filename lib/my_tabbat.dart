import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test2/pages/cliente.dart';
import 'package:flutter_test2/pages/customer.dart';
import 'package:flutter_test2/pages/myclientele.dart';
import 'package:flutter_test2/pages/poster.dart';

class _Item{
  String name, activeIcon, normalIcon;
  _Item(this.name, this.activeIcon, this.normalIcon);
}
class TabbarPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _TabbarPageState();
  }

}
class _TabbarPageState extends State<TabbarPage>{

  final itemNames = [
    _Item('获客', '', ''),
    _Item('客户', '', '')
  ];
  final _widgetPages = [
    CustomerPage(title: '获客中心',),
//    ClientePage()
    MyClientelePage()
  ];
  int _selectindex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return CupertinoTabScaffold(
//      //底部选项卡
//        tabBar: CupertinoTabBar(
//          backgroundColor: CupertinoColors.white,
//            items: [
//              new BottomNavigationBarItem(
//                  icon: Image.asset('',width: 30.0,height: 30.0),
//                  title: new Text(
//                      '获客'
//                  ),
//                  activeIcon:
//                  new Image.asset('',width: 30.0,height: 30.0)
//              ),
//              new BottomNavigationBarItem(
//                  icon: Image.asset('images/Find_N@3x.webp',width: 30.0,height: 30.0,),
//                  title: new Text(
//                      '客户'
//                  ),
//                  activeIcon:
//                  new Image.asset('images/Find_P@3x.webp',width: 30.0,height: 30.0,)
//              ),
//            ],
//        ),
//        tabBuilder: (context, index){
//          //选项卡绑定的视图
//          return CupertinoTabView(
//            builder: (context){
//              switch (index){
//                case 0:
//                  return CustomerPage(title: '获客中心',);
//                  break;
//                case 1:
//                  return ClientePage();
//              }
//            },
//          );
//        }
//    );
    return Scaffold(
      body: _widgetPages.elementAt(_selectindex),
      bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
                icon: Image.asset('',width: 30.0,height: 30.0),
              title: new Text(
                '获客'
              ),
              activeIcon:
                new Image.asset('',width: 30.0,height: 30.0)
            ),
            new BottomNavigationBarItem(
                icon: Image.asset('',width: 30.0,height: 30.0,),
              title: new Text(
                '客户'
              ),
              activeIcon:
                new Image.asset('',width: 30.0,height: 30.0,)
            )
          ],
        onTap: ((index){
          setState(() {
            _selectindex = index;
          });
        }),
        currentIndex: _selectindex,
      ),
    );
  }

}
import 'package:flutter/material.dart';

import '../custom.dart';

class MenuPage extends StatelessWidget{
  List<String> imagename = ['images/item_gzs@2x.webp','images/item_mp@2x.webp',
    'images/item_tj@2x.webp','images/item_cj@2x.webp','images/item_hb@2x.webp','images/item_video@2x.webp',
  'images/item_zs@2x.webp','images/item_ssf@2x.webp','images/item_qd@2x.webp'];
  List<String> title = ['移动工作室','智能名片','产品推介','每日财经','精品海报','精彩视频','转发助手','随手发','敬请期待'];
  @override
  Widget build(BuildContext context) {
    List<Container> _buildGridTitleList(int count){
      return new List<Container>.generate(count, (int index)=>
        new Container(
          margin: EdgeInsets.only(top: Adapt.px(20)),
          child: new Column(
            children: <Widget>[
              new Image.asset(
                  imagename[index],
                width: Adapt.px(75),
                height: Adapt.px(75),
              ),
              new Text(title[index],
                style: new TextStyle(fontSize: Adapt.px(28)),
              )
            ],
          ),

        )
      );
    }
    //渲染GridView
    Widget buildGrid(){
      return new GridView.builder(
        itemCount: imagename.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: Adapt.px(20),
            childAspectRatio: 1.8
          ),
          itemBuilder: (BuildContext context,int index){
              return _buildGridTitleList(9)[index];
          },

        padding: const EdgeInsets.all(4),
//        mainAxisSpacing: Adapt.px(20),


      );
    }
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('网格视图'),
      ),
      body: buildGrid(),
    )  ;
  }

}
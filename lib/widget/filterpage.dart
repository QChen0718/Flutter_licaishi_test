import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
class FilterPage extends StatefulWidget{
  @override
  _FilterPageState createState() => _FilterPageState();

}

class _FilterPageState extends State<FilterPage>{
  List<String> titles = ['是否注册APP','是否有手机号','是否成交','是否有微信号','来源','是否有标签','标签'];
  List<List> items=[['是','否'],['是','否'],['是','否'],['是','否'],['名片分享添加','产品分享添加','每日财经添加','APP注册绑定'],['是','否'],['偏好房地产','拆迁户','基础设施']];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          new Expanded(
              child: new Container(
                padding: EdgeInsets.all(44),
                child: MediaQuery.removePadding(
                  removeTop: true,
                    context: context,
                    child: ListView.builder(
                      itemCount: titles.length,
                      itemBuilder: (context,index){
                        return buildItem(index);
                      },
                    )
                ),
              ),
          )
        ],
      ),
      bottomSheet: new Container(
        margin: EdgeInsets.only(bottom: Adapt.px(70)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new MaterialButton(
              onPressed: (){

              },
              child: new Container(
                width: Adapt.px(180),
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Adapt.px(47)),
                    color: Color(0xffF5F5F5)
                ),
                child: new Text(
                  '重置',
                  style: TextStyle(
                      color: Color(0xff4A4A4A),
                      fontSize: Adapt.px(32)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            new MaterialButton(
              onPressed: (){

              },
              child: new Container(
                width: Adapt.px(180),
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Adapt.px(47)),
                  color: Color(0xffF36E27),
                ),
                child: new Text(
                  '确定',
                  style:  TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: Adapt.px(32)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  // 每一个cell
  buildItem(int index){
   List subitems = items[index];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(bottom: Adapt.px(15)),
          child: new Text(
            titles[index],
            style: TextStyle(
              color: Color(0xff4A4A4A),
              fontSize: Adapt.px(32)
            ),
          ),
        ),
        new Container(
          margin: EdgeInsets.only(bottom: Adapt.px(60)),
          width: Adapt.px(455),
          child: Wrap(
            spacing: Adapt.px(35),
            runSpacing: Adapt.px(20),
            children: _subitems(subitems),
          ),
        ) 
      ],
    );
  }
  //
  _subitems(List currentitems){
    List<Widget> subitems = [];
    currentitems.forEach((str){
      subitems.add(_subitem(str));
    });
    return subitems;
  }
  //每一个item选项
  _subitem(String currenttitle){
    return new Container(
      padding: EdgeInsets.only(left: Adapt.px(20),right: Adapt.px(20)),
      child: new Text(
        currenttitle,
        style: TextStyle(
          color: Color(0xff4A4A4A),
          fontSize: Adapt.px(28)
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0xffFFECE6),
        borderRadius: BorderRadius.circular(Adapt.px(4))
      ),
    );
  }
}
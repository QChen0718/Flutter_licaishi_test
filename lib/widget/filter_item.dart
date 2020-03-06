import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
import 'package:flutter_test2/widget/popItem.dart';

class FilterItem extends StatefulWidget{
  final void Function() sortbtnClick; //排序按钮回调方法
  final void Function() filterbtnClick; //筛选按钮回调方法

  const FilterItem({Key key, this.sortbtnClick, this.filterbtnClick}) : super(key: key);
  @override
  _FilterItemState createState() => _FilterItemState();

}
class _FilterItemState extends State<FilterItem>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: Adapt.px(30),right: Adapt.px(30)),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _items(context),
      ),
    );
  }
  _items(BuildContext context){
    List<Widget> items = [];
    List<String> titles = ['默认排序','持仓客户','近期到账','筛选'];
    for(int i=0;i<titles.length;i++){
      items.add(_item(titles[i], i));
    }
    return items;
  }
  _item(String title,int index){
      if(index == 0){
        return new GestureDetector(
          onTap: widget.sortbtnClick,
           child: PopItem()
        );
      }
      else if(index == 3){
        return new GestureDetector(
          onTap: widget.filterbtnClick,
          child: new Row(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: Adapt.px(10),right: Adapt.px(10)),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: Adapt.px(32)
                  ),
                ),
              ),
              new Image.asset(
                'images/filter_icon@3x.webp',
                width: Adapt.px(21),
                height: Adapt.px(23),
              )
            ],
          ),
        );
      }
      else {
        return Text(
          title,
          style: TextStyle(
            color: Color(0xff333333),
            fontSize: Adapt.px(32),
          ),
        );
      }
  }
}
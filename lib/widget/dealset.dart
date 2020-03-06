

import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';
import 'dart:io';
//图片选择插件
import 'package:image_picker/image_picker.dart';
class Dealset extends StatefulWidget{
  @override
  _DealsetState createState() => _DealsetState();
}
class _DealsetState extends State<Dealset>{
  File _image;
  Future getImage() async{
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: new ListView.builder(
              itemCount: 7,
              itemBuilder: (context,index){
                return _cell(context,index);
              }
          ),
      ),
    );
  }
  Widget _cell(BuildContext context,int index){
    List<String> titles = ['银行账号','开户银行','开户行所在地','银行分支行'];
    List<String> contents = ['6228 4800 8814 1868 996','上海市浦东新区发展银行','上海 上海市','浦发小虎支行'];
    List<String> images = ['images/trading_addbank@3x.webp','images/trading_Positive@3x.webp','images/trading_Reverse@3x.webp'];
    List<String> cardinfos = ['暂未上传银行卡','暂未上传身份证正面','暂未上传身份证反面'];
     return index < 3? new Container(
        child: new GestureDetector(
          onTap: getImage,
          child: new Container(
            padding: EdgeInsets.all(15),
            child: Stack(
              alignment:AlignmentDirectional.bottomCenter,
              children: <Widget>[
                _image == null
                    ?new Image.asset(
                  images[index],
                  width: Adapt.px(445),
                  height: Adapt.px(242),
                ):Image.file(
                  _image,
                  width: Adapt.px(445),
                  height: Adapt.px(242),
                ),
                new Positioned(
                    bottom: Adapt.px(20),
                    child: Text(
                      cardinfos[index],
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                          fontSize: Adapt.px(28)
                      ),
                    )
                )
              ],
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color(0xffD8D8D8),
                        width: 1
                    )
                )
            ),
          ),
        )
      ):new Container(
          padding: EdgeInsets.all( Adapt.px(28)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                  titles[index-3],
                  style: TextStyle(
                      color: Color(0xff999999),
                      fontSize: Adapt.px(34)
                  ),
                ),

              Text(
                  contents[index-3],
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: Adapt.px(34)
                  ),
                ),
            ],
          ),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(
              color: Color(0xffD8D8D8),
              width: 1
            ))
          ),
       )
     ;
  }
}
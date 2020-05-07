import 'package:flutter/material.dart';
import 'package:flutter_test2/custom.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Image.asset(
            '',
            width: Adapt.screenW(),
            height: Adapt.screenH()
          ),
          new Container(
            margin: EdgeInsets.only(top: 44),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: "请输入手机号",
                  ),
                  keyboardType: TextInputType.phone,
                ),
                new TextField(
                  decoration: InputDecoration(
                    hintText: "请输入密码",
                  ),
                  keyboardType: TextInputType.text,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new MaterialButton(
                        onPressed: (){

                        },
                      child: new Text(
                        '注册',
                        style: new TextStyle(
                          fontSize: Adapt.px(30),
                        ),
                      ),
                    ),
                    new MaterialButton(
                      onPressed: (){
//                        Navigator.pushNamed(context, '/home');
                      Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: new Text(
                        '登录',
                        style: new TextStyle(
                          fontSize: Adapt.px(30),
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
    );
  }
}
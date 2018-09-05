import 'dart:ui';

import 'package:flutter/material.dart';
import  'package:flutter_app/second.dart';
void main() {
  runApp(new MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyStatefullState();
  }
}

class MyStatefullState extends State {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'osc',
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green[700],
        accentColor: Colors.cyan[600],
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('登录'),
          leading: new Icon(Icons.arrow_back),
          //flexibleSpace: new Text("456"),
        ),
        body: new MyBody()
      ),
    );
  }
}
class MyBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new MyFullState();
  }

}

class MyFullState extends State {
  var _userNameController=new TextEditingController();
  var _userPassController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
  return  new ListView(
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.all(1.0),
          child:  new Image.network("http://f005.bai.com/data/uploads/2014/1022/11/ce15c0e61100540fde5eb6d2b282a984_middle.jpeg",
              height: 280.0,
              width: window.physicalSize.width),),
        new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new TextField(
            controller: _userNameController,
            //maxLines: 1,
            decoration: new InputDecoration(
                hintText: '请输入用户名',
                border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(1.0))
                )
            ),
          ),

        ),
        new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new TextField(
            //maxLength: 10,
            controller: _userPassController,
            maxLines: 1,
            decoration: new InputDecoration(
                hintText: '请输入密码',
                border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(1.0))
                )
            ),
          ),

        ),
        new InkWell(
          onTap: (){
            print(_userPassController.text);
          },
          child: new Padding(
            padding: const EdgeInsets.only(left:260.0,right: 2.0),
            child: new Text(
              '没有账号？马上注册',
              style: new TextStyle(color: Colors.black38),
            ),
          ),
        ),
        new Container(
          margin: new EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
          width: 360.0,
          child: new Card(
            color: Colors.green,
            elevation: 6.0,
            child: new FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new MyListView()),
                  );
                },
                child: new Padding(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text('马上登录',
                    style: new TextStyle(
                        color: Colors.white,fontSize: 16.0
                    ),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/MyGridView.dart';
import 'package:flutter_app/MyListView.dart';
import 'package:flutter_app/MyHttp.dart';
import 'package:flutter_app/MyRow.dart';

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
  Drawer drawer =new  Drawer();

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
        drawer: drawer,
          appBar: new AppBar(
            title: new Text('登录'),
            leading: new InkWell(
              onDoubleTap: (){
                print('onDoubleTap');
              },
              onTap: (){
                print('onTap');
              },
              child: new Icon(Icons.menu),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(Icons.more_vert),
              ),
            ],

          ),
          body: new MyBody()),
    );
  }
}

class MyBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyFullState();
  }
}

class MyFullState extends State {
  var _userNameController = new TextEditingController();
  var _userPassController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Image.network(
              "http://f005.bai.com/data/uploads/2014/1022/12/ac0866980a640647a1c9c3c29295bc3d_middle.jpeg",
              height: 280.0,
              width: window.physicalSize.width),
        ),
        new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new TextField(
            controller: _userNameController,
            //maxLines: 1,
            decoration: new InputDecoration(
                hintText: '请输入用户名',
                border: new OutlineInputBorder(
                    borderRadius:
                        const BorderRadius.all(Radius.circular(1.0)))),
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
                    borderRadius:
                        const BorderRadius.all(Radius.circular(1.0)))),
          ),
        ),
        new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new MyListView(
                        items: new List<String>.generate(
                            20, (i) => "Item ${i + 1}"))),
              );
            },
            child: new Padding(
              padding: EdgeInsets.all(8.0),
              child: new Align(
                alignment: Alignment.centerRight,
                child: new Text(
                  '没有账号？马上注册',
                  style: new TextStyle(color: Colors.black38),
                ),
              ),
            )),
        new Container(
          margin: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
          width: 360.0,
          child: new Card(
            color: Colors.green,
            elevation: 6.0,
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new MyGridView()),
                  );
                },
                child: new Padding(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(
                    '马上登录',
                    style: new TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                )),
          ),
        ),
        new Container(
          margin: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
          width: 360.0,
          child: new Card(
            color: Colors.green,
            elevation: 6.0,
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new MyHttp()),
                  );
                },
                child: new Padding(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(
                    'Http请求',
                    style: new TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                )),
          ),
        ),
        new Container(
          margin: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
          width: 360.0,
          child: new Card(
            color: Colors.green,
            elevation: 6.0,
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new MyScaffold()),
                  );
                },
                child: new Padding(
                  padding: new EdgeInsets.all(10.0),
                  child: new Text(
                    'myRow',
                    style: new TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                )),
          ),
        )
      ],
    );
  }
}

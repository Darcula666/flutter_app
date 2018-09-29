import 'package:flutter/material.dart';

void main() {
  runApp(new layout());
}

class layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(primarySwatch: Colors.blue),
        home: new Scaffold(
          appBar: new AppBar(
            leading: Icon(Icons.camera),
          ),
          body: new MyLayout(),
        ));
  }
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: [
              new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: new Text(
                        'Oeschinen Lake Campground',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Text(
                      'Kandersteg, Switzerland',
                      style: new TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Icon(
                        Icons.star,
                        color: Colors.red[500],
                      ),
                      new Text('41'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          new Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildButtonColumn(Icons.call, 'CALL'),
                buildButtonColumn(Icons.near_me, 'ROUTE'),
                buildButtonColumn(Icons.share, 'SHARE'),
              ],
            ),
          ),
          new Padding(
            padding: EdgeInsets.all(20.0),
            child: new Text(
              ''' 
              Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. 
              Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. 
              A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, 
              leads you to the lake, which warms to 20 degrees Celsius in the summer. 
              Activities enjoyed here include rowing, and riding the summer toboggan run.
              ''',
              softWrap: true, //属性表示文本是否应在软换行符（例如句点或逗号）之间断开
            ),
          )
        ],
      ),
    );
  }
}

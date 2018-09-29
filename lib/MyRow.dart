import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:shimmer/shimmer.dart';


class MyAppbar extends StatelessWidget{
  MyAppbar({this.title});
  // Fields in a Widget subclass are always marked "final".
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.blue[500]
      ),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navgation menu',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
    );
  }

}
class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: <Widget>[
          MyAppbar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child: SizedBox(
                width: 200.0,
                height: 100.0,
                child: Shimmer.fromColors(
                  baseColor: Colors.black12,
                  highlightColor: Colors.green,
                  child: Text(
                    'Shimmer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}
/*
void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyScaffold(),
  ));
}*/

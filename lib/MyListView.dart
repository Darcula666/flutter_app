import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  final List<String> items;
  MyListView({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Dismissing Items';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
          leading: new InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: new Icon(Icons.arrow_back),
          ),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return new Dismissible(
              // Each Dismissible must contain a Key. Keys allow Flutter to
              // uniquely identify Widgets.
              key: new Key(item),
              // We also need to provide a function that will tell our app
              // what to do after an item has been swiped away.
              onDismissed: (direction) {
                items.removeAt(index);

                Scaffold.of(context).showSnackBar(
                    new SnackBar(content: new Text("$item dismissed")));
              },
              // Show a red background as the item is swiped away
              background: new Container(color: Colors.deepOrangeAccent),
              child: new Card(
                color: Colors.amber[300],
                child: new Container(
                  child: new ListTile(title: new Text(
                    '$item',
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic
                    ),)),
                ),


              )

            );
          },
        ),
      ),
    );
  }
}
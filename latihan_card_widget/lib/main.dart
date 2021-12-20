import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.green,
          body: Container(
            margin: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                buildCard(Icons.add_a_photo, "Foto"),
                buildCard(Icons.add_alarm, "Alarm"),
                buildCard(Icons.add_call, "Call"),
                buildCard(Icons.add_comment, "Comment"),
              ],
            ),
          )),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 80,
      child: Row(
        children: <Widget>[
          Container(margin: EdgeInsets.all(5), child: Icon(iconData, color: Colors.green)),
          Text(text)
        ],
      ),
    );
  }
}

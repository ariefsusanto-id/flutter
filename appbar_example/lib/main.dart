import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.adb,
            color: Colors.blue,
          ),
          title: Text(
            "Appbar Example",
            style: TextStyle(color: Colors.blue),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.settings, color: Colors.blue),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.exit_to_app, color: Colors.blue),
                onPressed: () {}),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff0096ff), Color(0xff6610f2)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.topLeft,
                ),
                image: DecorationImage(
                    image: AssetImage("assets/pattern.jpg"),
                    fit: BoxFit.none,
                    repeat: ImageRepeat.repeat)),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latohan Container"),
        ),
        body: Container(
          color: Colors.red,
          margin: EdgeInsets.fromLTRB(10, 15, 20, 30),
          padding: EdgeInsets.only(bottom: 10, top: 30),
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.amber, Colors.blue])),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hi World"),
        ),
        body: Center(
            child: Container(
                color: Colors.amber,
                width: 150,
                height: 100,
                child: Text(
                  "Ini adalah aplikasi flutter pertamaku Ini adalah aplikasi flutter pertamakuIni adalah aplikasi flutter pertamakuIni adalah aplikasi flutter pertamaku",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.purple,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ))),
      ),
    );
  }
}

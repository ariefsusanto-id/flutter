import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Nama Kamu Siapa";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Anonimouse"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                message,
                style: TextStyle(fontSize: 30),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    message = "Aisyah Azzahra Oktavia";
                  });
                },
                child: Text("Nama Kamu"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

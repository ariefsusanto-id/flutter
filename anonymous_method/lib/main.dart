import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String msg = "Aku Suka Indomie";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Container(
            color: Colors.cyan,
            margin: EdgeInsets.all(10),
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  msg,
                  style: TextStyle(fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          msg = "Aku dikasih mie mie";
                        });
                      },
                      child: Text("Tekan Saya"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          msg = "Habis";
                        });
                      },
                      child: Text("makan"),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

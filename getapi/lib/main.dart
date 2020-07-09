import 'package:flutter/material.dart';
import 'package:posapi/user_model.dart';

import 'user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  User user ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("DEMO POST API")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((user != null)
                  ? "User Id : " + user.id +
                      " <|> " +
                    "Name : " + user.name
                    : "Tidak ada data"),
                  
              RaisedButton(
                onPressed: () {
                  User.connectToAPI("3").then((value) {
                    user = value;
                    setState(() {
                    
                    });
                  });
                },
                child: Text("GET"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

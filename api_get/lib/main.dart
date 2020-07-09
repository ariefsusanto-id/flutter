
import 'package:api_get/user_model.dart';
import 'package:flutter/material.dart';
import 'package:api_get/post_result_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API DEMO"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text((user != null) ? 
                      user.id +
                      " | " +
                      user.name 
                  : " Tidak ada data"),
              RaisedButton(
                onPressed: () {
                  User.connectToAPI("8").then((value){
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

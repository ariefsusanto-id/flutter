import 'package:flutter/material.dart';

import 'post_result_,model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("DEMO POST API")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult != null)
                  ? "access token : " + postResult.accesstoken +
                      " <|> " +
                    "refresh token : " + postResult.refreshtoken +
                      " | " +
                    "scope : " + postResult.scope +
                      " | " +
                    "refresh idtoken : " +   postResult.idtoken +
                      " | " +
                    "token type : " +   postResult.tokentype +
                      " | " +
                    "Expired id : " +   postResult.expiresin.toInt()
                  : "Tidak ada data"),
                  
              RaisedButton(
                onPressed: () {
                  PostResult.connectToAPI("arief.susanto", "nasibakar", "password", "openid").then((value) {
                    postResult = value;
                    setState(() {
                    
                    });
                  });
                },
                child: Text("POST"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

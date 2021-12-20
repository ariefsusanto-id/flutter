import 'package:flutter/material.dart';
import 'package:latihan_multipage/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page")),
      body: Center(
        child: RaisedButton(
            child: Text("Goto Second Page"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage();
              }));
            }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:navigasi/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("GO TO SECOND PAGE"),
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
        ),
      ),
    );
  }
}

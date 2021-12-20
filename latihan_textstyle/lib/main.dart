import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Font"),
        ),
        body: Center(
            child: Text(
          "Arief Susanto",
          style: TextStyle(
              fontFamily: "The_Led_Display_St",
              fontSize: 30,
              color: Colors.green,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationThickness: 2,
              decorationStyle: TextDecorationStyle.wavy

              ),
        )),
      ),
    );
  }
}

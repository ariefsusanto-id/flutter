import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Image Widget")),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child:
              //dari web 
              Image(image: NetworkImage("https://www.wowkeren.com/display/images/photo/2020/03/14/00301574.jpg"),
              //dari file file
              //Image(image: AssetImage("assets/images/raisa.jpg"),
          
            fit: BoxFit.cover,
            
            ),
            
          ),
        ),
      ),
      
    );
  }
}
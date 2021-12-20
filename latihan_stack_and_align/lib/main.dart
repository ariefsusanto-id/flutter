import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stack dan Align"),
        ),
        body: Stack(
          children: <Widget>[
            //background
            Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1, child: Container(color: Colors.green)),
                        Flexible(
                            flex: 1, child: Container(color: Colors.black26)),
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(flex: 1, child: Container(color: Colors.blue)),
                        Flexible(flex: 1, child: Container(color: Colors.pink)),
                      ],
                    )),
              ],
            ),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
                          style: TextStyle(fontSize: 30),
                        )),
                  ],
                )
              ],
            ),
            Align(
                alignment: Alignment(0, 0.95),
                child: RaisedButton(
                    child: Text("My BUtton"),
                    color: Colors.yellow,
                    onPressed: () {}))
            //list dengan text
            //button
          ],
        ),
      ),
    );
  }
}

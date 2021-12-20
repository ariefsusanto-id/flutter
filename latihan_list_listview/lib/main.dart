import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 0;

  //_MyAppState() {
  //  for (int i = 1; i < 50; i++)
  //    widgets.add(Text(
  //      "Data Ke-" + i.toString(),
  //      style: TextStyle(fontSize: 30),
  //    ));
  //}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan List View"),
          ),
          body: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                      onPressed: () {
                        setState(() {
                          widgets.add(Text("Data ke-" + counter.toString()));
                          counter++;
                        });
                      },
                      child: Text("Tambah")),
                  RaisedButton(
                      onPressed: () {
                        setState(() {
                          widgets.removeLast();
                          counter--;
                        });
                      },
                      child: Text("Kurangi"))
                ],
              ),
              Column(
                children: widgets,
              )
            ],
          )),
    );
  }
}

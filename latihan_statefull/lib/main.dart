import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nomor = 0;
  void tekantombol() {
    setState(() {
      nomor = nomor + 1;
    });
  }

  void reset() {
    setState(() {
      nomor = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan StateFull"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 100,
                child: Center(
                  child: Text(
                    nomor.toString(),
                    style: TextStyle(fontSize: 10 + nomor.toDouble()),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    onPressed: tekantombol,
                    child: Text("Tombol Tambah"),
                  ),
                  RaisedButton(
                    onPressed: reset,
                    child: Text("Reset"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

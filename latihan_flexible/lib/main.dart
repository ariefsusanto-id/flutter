import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Flexible"),
          ),
          body: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  margin: EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.greenAccent,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.green,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.blue,
                ),
              ),
            ],
          )),
    );
  }
}

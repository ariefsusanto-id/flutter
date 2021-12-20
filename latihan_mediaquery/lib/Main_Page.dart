import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Media Query"),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.landscape)  // cek orientation
          ? Column(
              children: generatecontainer(),
            )
          : Row(
              children: generatecontainer(),
            ),
    );
  }

  List<Widget> generatecontainer() {    // extracct methode
    return <Widget>[
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
    ];
  }
}

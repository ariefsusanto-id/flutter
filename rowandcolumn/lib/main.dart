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
          title: Text("Latihan Row and Column"),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.end,    // Pojok Kiri Bawah
          //mainAxisAlignment: MainAxisAlignment.spaceAround,  // memenuhi ruang atas sampai bawah, atas dan bawah kosong
          //mainAxisAlignment: MainAxisAlignment.spaceBetween, // isi dari atas dan bawah kemudian di bagi
          //mainAxisAlignment: MainAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center, // Tengah Kolom
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Text("Text 4"),
            Row(
              children: <Widget>[Text("Text 5"), Text("Text 6")],
            )
          ],
        ),
      ),
    );
  }
}

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
          title: Text("Aplikasi Pertama"),
        ),
        body: Center(
            // MEmbungkus di dalan center
            child: Container(
                // Membungkus WIdget didalamnya (ex. text)
                color: Colors.lightBlue[50], // Warna Background
                width: 300, // Lebar
                height: 80, // Tinggi
                child: Text(
                  //
                  // Widget
                  "Arief Susanto Flutter: is fully installed. (Channel stable, v1.17.5, on Linux, locale en_US.UTF-8)",
                  maxLines: 2, // Jumlah Baris
                  //overflow: TextOverflow.clip,   Text akan terpotong
                  //overflow: TextOverflow.ellipsis, //Text akan ada tanda putus
                  //softWrap: false,  //Text Wrapping default True
                  textAlign: TextAlign.center, // Text Align  // Ukuran Text
                  style: TextStyle(
                      //Property Style
                      //Untuk Style Text
                      color: Colors.green[300], // warna text
                      fontStyle: FontStyle.italic, // style text
                      fontWeight: FontWeight.w700, // ketebalan text
                      fontSize: 20), // Ukuran Text
                ))),
      ),
    );
  }
}

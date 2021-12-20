import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController oncom = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan TextField"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                maxLength: 4,
                onChanged: (value) {
                  setState(() {});
                },
                controller: oncom,
                decoration: InputDecoration(
                    icon: Icon(Icons.adb),
                    prefixIcon: Icon(Icons.person),
                    //prefixText: "Name",
                    labelText: "Nama",
                    hintText: "Masukan",
                //  border: InputBorder.none,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              Text(oncom.text)
            ],
          ),
        ),
      ),
    );
  }
}

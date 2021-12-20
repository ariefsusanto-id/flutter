import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etUsername = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();

  String nUsername = "";
  String nPassword = "";
  String salam = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Input"),
        ),
        body: Column(
          children: <Widget>[
            Text("Masukan Nama : "),
            TextFormField(
              controller: etUsername,
              decoration: InputDecoration(hintText: 'Input Nama'),
            ),
            Text("Masukan Password : "),
            TextFormField(
              controller: etPassword,
              obscureText: true,
              decoration: InputDecoration(hintText: 'Input Password'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  nUsername = etUsername.text;
                  nPassword = etPassword.text;
                  salam = "Hai," +
                      nUsername +
                      ", Password anda adalah " +
                      nPassword;
                });
              },
              child: Text("Submit"),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  nUsername = etUsername.text;
                  nPassword = etPassword.text;
                  salam = "";
                  etPassword.text = "";
                  etUsername.text = "";
                });
              },
              child: Text("Clear"),
            ),
            Text(salam)
          ],
        ),
      ),
    );
  }
}

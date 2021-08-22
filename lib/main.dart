import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/home.dart';
main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'WhatsApp',
      theme: new ThemeData(
      primaryColor: new Color(0xff075e54),
      accentColor: new Color(0xff075e54)
      ),
      home: new Home(),
    );
  }
}
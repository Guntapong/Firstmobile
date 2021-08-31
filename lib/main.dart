import 'package:flutter/material.dart';
import 'package:mobile_ced/Index.dart';
import 'package:mobile_ced/screen/register.dart';
import 'config/constant.dart';
import 'screen/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KMUTNB',
      theme: ThemeData(
        primaryColor: pColor,
        secondaryHeaderColor: sColor,
      ),
      routes: {
        'login': (context) => Login(),
        'register': (context) => Register(),
      },
      home: Index(),
    );
  }
}

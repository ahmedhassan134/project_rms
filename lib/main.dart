import 'package:flutter/material.dart';
import 'package:moderen/food1/food2.dart';
import 'package:moderen/page2.dart';
import 'package:moderen/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

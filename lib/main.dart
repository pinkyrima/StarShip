import 'package:flutter/material.dart';
import 'package:starship/FirstRoute.dart';
import 'package:starship/FourthRoute.dart';
import 'package:starship/SecondRoute.dart';
import 'package:starship/ThirdRoute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ThirdRoute(),
    );
  }
}



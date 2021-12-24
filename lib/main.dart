// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

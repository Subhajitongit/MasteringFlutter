// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:master_flutter/pages/cart.dart';
import 'package:master_flutter/pages/login_page.dart';
import 'package:master_flutter/utils/routes.dart';
import 'package:master_flutter/utils/theme.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: MyTheme.lightThemeData,
        darkTheme: MyTheme.darkThemeData,
        initialRoute: MyRoutes.home,
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.home: (context) => HomePage(),
          MyRoutes.login: (context) => LoginPage(),
          MyRoutes.cart: (context) => CartPage(),
        });
  }
}

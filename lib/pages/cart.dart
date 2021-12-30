// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:master_flutter/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: "Cart".text.color(MyTheme.darkBluish).make(),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
        ));
  }
}

// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, non_constant_identifier_names, unnecessary_null_comparison, prefer_typing_uninitialized_variables, unused_import

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:master_flutter/models/catalog.dart';
import 'package:master_flutter/utils/theme.dart';
import 'package:master_flutter/widgets/drawer.dart';
import 'package:master_flutter/widgets/home_widgets/catalog_header.dart';
import 'package:master_flutter/widgets/home_widgets/catalog_list_item.dart';
import 'package:master_flutter/widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: MyTheme.darkBluish,
        child: Icon(CupertinoIcons.cart),
      ),
      backgroundColor: MyTheme.creamcolor,
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: Vx.m16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().py8().expand()
              else
                CircularProgressIndicator().centered().expand()
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

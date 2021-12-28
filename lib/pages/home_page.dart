// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, non_constant_identifier_names, unnecessary_null_comparison

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:master_flutter/models/catalog.dart';
import 'package:master_flutter/widgets/drawer.dart';
import 'package:master_flutter/widgets/item_widget.dart';

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
        appBar: AppBar(
          title: Text(
            "Catalog app",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? Padding(
                padding: const EdgeInsets.all(16),
                child: ListView.builder(
                  itemCount: CatalogModel.items.length,
                  itemBuilder: (context, index) =>
                      ItemWidget(item: CatalogModel.items[index]),
                ))
            : Center(child: CircularProgressIndicator()),
        drawer: MyDrawer());
  }
}

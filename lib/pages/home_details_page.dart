// ignore_for_file: prefer_const_constructors, implementation_imports

import 'package:flutter/material.dart';
import 'package:master_flutter/models/catalog.dart';
import 'package:master_flutter/utils/theme.dart';
import 'package:velocity_x/src/flutter/center.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailsPage extends StatelessWidget {
  final Item catalog;
  const DetailsPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: MyTheme.creamcolor,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                ButtonBar(alignment: MainAxisAlignment.spaceBetween, children: [
              "\$${catalog.price}"
                  .text
                  .bold
                  .xl4
                  .color(MyTheme.darkBluish)
                  .make(),
              ElevatedButton(
                onPressed: () {},
                child: "Buy".text.bold.xl2.make().centered().wh(100, 50),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(MyTheme.darkBluish),
                    shape: MaterialStateProperty.all(StadiumBorder())),
              )
            ]),
          ),
        ),
        appBar: AppBar(),
        body: Column(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Container(
                    child:
                        Image.network(catalog.image).centered().h32(context))),
            Expanded(
              child: VxArc(
                height: 30.0,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: Container(
                  width: context.screenWidth,
                  color: MyTheme.creamcolor,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl5
                          .color(MyTheme.darkBluish)
                          .make()
                          .pOnly(top: 32),
                      catalog.desc.text.caption(context).make()
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

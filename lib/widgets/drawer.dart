// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final url =
      "https://media-exp1.licdn.com/dms/image/C4D03AQHfFdWuOi67MA/profile-displayphoto-shrink_100_100/0/1631614073444?e=1645056000&v=beta&t=Iq4FPgSVpZL3AFWcS8Z_nVYQ-l84hRBzPmcuwxlYzmk";
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.deepPurple,
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Subhajit Gorai"),
                accountEmail: Text("subhajitthisside@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(url),
                ),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.white),
            title: Text("Home",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.cart, color: Colors.white),
            title: Text("Cart",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.money_dollar_circle_fill,
                color: Colors.white),
            title: Text("Wallet",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    ));
  }
}

// ignore_for_file: prefer_const_constructors, implementation_imports

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:master_flutter/utils/routes.dart';
import 'package:master_flutter/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/login_image.png",
                    fit: BoxFit.cover,
                  ).wh(500, 300).pOnly(left: 30),
                  "Login".text.xl6.make().pOnly(right: 190),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(hintText: "Username"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "UserName can't be empty.";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(hintText: "Password"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password can't be empty.";
                            } else if (value.length < 6) {
                              return "Password must be at least 6 characters";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => moveToHome(context),
                    child: Text("Login"),
                    style:
                        ElevatedButton.styleFrom(primary: MyTheme.darkBluish),
                  ).w(330),
                  SizedBox(height: 5),
                  ElevatedButton.icon(
                    onPressed: () {
                      VxToast.show(context, msg: "Feature coming soon...");
                    },
                    label: Text("Sign in with Google"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent[700]),
                    icon: Image.network(
                            "https://pngimg.com/uploads/google/google_PNG19635.png")
                        .wh(30, 31),
                  ).w(330)
                ],
              ),
            ),
          ),
        ));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:master_flutter/utils/routes.dart';

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
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text("Welcome $name",
                    style: TextStyle(
                        color: Colors.indigo[600],
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Username",
                            hintText: "Enter your username"),
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
                        decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter your password"),
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
                  style: ElevatedButton.styleFrom(primary: Colors.indigo[600]),
                )
              ],
            ),
          ),
        ));
  }
}

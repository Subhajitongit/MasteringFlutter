// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:master_flutter/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text("Welcome",
                  style: TextStyle(
                      color: Colors.indigo[600],
                      fontSize: 50,
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
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter your password"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.home);
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(primary: Colors.indigo[600]),
              )
            ],
          ),
        ));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get lightThemeData => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black)));

  static ThemeData get darkThemeData => ThemeData(
        brightness: Brightness.dark,
      );

//colors
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkBluish = Color(0xff40385b);
}

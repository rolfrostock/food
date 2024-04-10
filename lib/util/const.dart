// lib/util/const.dart

import 'package:flutter/material.dart';

class Constants {
  static String appName = "Foody Bite";

  // Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Color(0xff5563ff);
  static Color darkAccent = Color(0xff5563ff);
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color? ratingBG = Colors.yellow[600];

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    colorScheme: ColorScheme.light(
      primary: lightPrimary,
      secondary: lightAccent,
      background: lightBG, // Setting background color here
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: lightAccent,
    ),
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      backgroundColor: lightPrimary, // Set your AppBar background color if needed
      titleTextStyle: TextStyle(
        color: darkBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
      toolbarTextStyle: TextStyle(
        color: darkBG, // This affects the AppBar's leading, title, and actions
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimary,
    colorScheme: ColorScheme.dark(
      primary: darkPrimary,
      secondary: darkAccent,
      background: darkBG, // Setting background color here
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: darkAccent,
    ),
    scaffoldBackgroundColor: darkBG,
    appBarTheme: AppBarTheme(
      backgroundColor: darkPrimary, // Set your AppBar background color if needed
      titleTextStyle: TextStyle(
        color: lightBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
      toolbarTextStyle: TextStyle(
        color: lightBG, // This affects the AppBar's leading, title, and actions
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
  );
}

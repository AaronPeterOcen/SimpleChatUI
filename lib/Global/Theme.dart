import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:simple_chat_application/Global/Colors.dart' as MyColors;


ThemeData lightTheme() {
  return ThemeData(
    colorScheme: ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.blueGrey,
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onBackground: Colors.black,
      onSurface: Colors.black,
    ),
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
    // Add other theme properties as needed
  );
}

ThemeData darkTheme() {
  return ThemeData(
    colorScheme: ColorScheme.dark(
      primary: Colors.blue,
      secondary: Colors.blueGrey,
      surface: Colors.grey[800]!,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
    ),
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[800],
      foregroundColor: Colors.white,
    ),
    // Add other theme properties as needed
  );
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_chat_application/Global/Settings.dart' as Settings;
import 'package:simple_chat_application/Global/Theme.dart' as Theme;
import 'package:simple_chat_application/View/MainPageView.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _changeTheme() {
    setState(() {
      Settings.isDarkMode = !Settings.isDarkMode;
    });
    
    // Update system UI overlay style based on theme
    if (Settings.isDarkMode) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.grey[900],
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ));
    }
  }

  @override
  void initState() {
    super.initState();
    // Initialize settings with the theme changer
    Settings.changeTheme = _changeTheme;
    
    // Set initial system UI overlay style
    _updateSystemUI();
  }

  void _updateSystemUI() {
    if (Settings.isDarkMode) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.grey[900],
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Chat UI',
      debugShowCheckedModeBanner: false,
      theme: Settings.isDarkMode ? Theme.darkTheme() : Theme.lightTheme(),
      home: MainPageView(),
    );
  }
}
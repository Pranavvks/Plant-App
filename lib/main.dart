import 'package:flutter/material.dart';
import '../utils/customappbar.dart';
import 'dart:ui';
import '../utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomeJungle',
      home: CustomAppBar(),
      theme: ThemeData(
        primaryColor: COLOR_WHITE,
        accentColor: COLOR_GREEN,
        textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../screens/landing_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

import '../utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var font_fam = GoogleFonts.montserrat().toString();
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomeJungle',
      theme: ThemeData(
          primaryColor: COLOR_WHITE,
          accentColor: COLOR_GREEN,
          textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
          fontFamily: font_fam),
      home: LandingScreen(),
    );
  }
}

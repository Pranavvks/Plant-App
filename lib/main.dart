import 'package:flutter/material.dart';
import '../screens/cart_screen.dart';
import '../utils/customappbar.dart';
import 'dart:ui';
import '../utils/constants.dart';
import '../providers/plants.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return ChangeNotifierProvider<Plants>(
      create: (context) => Plants(),
      // MaterialApp and all its child widgets can set up listener to this
      // instance of class
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HomeJungle',
        home: CustomAppBar(),
        theme: ThemeData(
          primaryColor: COLOR_WHITE,
          accentColor: COLOR_GREEN,
          textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
        ),
        routes: {CartScreen.routeName: (context) => CartScreen()},
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ginky_plants/providers/cart.dart';
import '../screens/cart_screen.dart';
import '../utils/customappbar.dart';
import 'dart:ui';
import '../utils/constants.dart';
import '../providers/plants.dart';
import '../providers/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Plants>(
          create: (context) => Plants(),
        ),
        ChangeNotifierProvider<Cart>(
          create: (context) =>
              Cart(), // We can listen to plants and carts anywhere in the application
        )
      ],
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

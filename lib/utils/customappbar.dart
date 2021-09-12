import 'package:flutter/material.dart';
import 'package:ginky_plants/screens/cart_screen.dart';
import 'constants.dart';
import '../screens/landing_screen.dart';

class CustomAppBar extends StatelessWidget {
  int plantindex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const double padding = 25;
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: OurPlants(),
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: COLOR_BLACK,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Plantly", style: themeData.textTheme.headline1),
            Text('.',
                style: new TextStyle(
                    color: Colors.green,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w700)),
          ],
        ),
        actions: [
          Icon(Icons.shopping_bag_outlined),
        ],
      ),
    );
  }
}

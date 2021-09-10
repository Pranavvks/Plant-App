import 'package:flutter/material.dart';

import './dummy_data.dart';

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

class CustomAppBar extends StatelessWidget {
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
        actions: [Icon(Icons.shopping_bag_outlined)],
      ),
    );
  }
}

class BorderBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double width, height;

  const BorderBox(
      {@required this.child, this.padding, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: COLOR_WHITE,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: COLOR_GREY.withAlpha(40), width: 2),
      ),
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Center(
        child: child,
      ),
    );
  }
}

class OurPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final ThemeData themeData = Theme.of(context);

    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: plantsList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(plantsList[index].plantImg)),
                      ),
                    ),
                  );
                })),
      ],
    );
  }
}
/*
 ...plantsList.map((pl) => Card(child: Image.network(pl.plantImg)))
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/pricebox.dart';
import './dummy_data.dart';
import '../utils/textbox.dart';
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

class OurPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Stack(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsetsDirectional.only(top: 10, bottom: 280),
          child: PageView.builder(
              controller: PageController(viewportFraction: 1.0),
              itemCount: plantsList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 200,
                  child: Align(
                    child: Card(
                      child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.lightBlue[50],
                          image: DecorationImage(
                              image: NetworkImage(plantsList[index].plantImg)),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsetsDirectional.only(top: 3),
                              alignment: Alignment.topRight,
                              child: PriceBox(
                                  child: Text(
                                    plantsList[index].price.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  width: 90,
                                  height: 90),
                            ),
                            Container(
                              margin:
                                  EdgeInsetsDirectional.only(top: 320, end: 30),
                              alignment: Alignment.centerLeft,
                              child: TextBox(
                                child: Text(
                                  plantsList[index].plantName,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900),
                                ),
                                width: 240,
                                height: 90,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(top: 440, end: 30),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.green,
                    ),
                    Text(
                      " 496",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              // Container(
              //   margin: EdgeInsetsDirectional.only(top: 10),
              //   child: Text("hello"),
              // )
            ],
          ),
        ),
      ],
    );
  }
}
/*
 ...plantsList.map((pl) => Card(child: Image.network(pl.plantImg)))
margin: EdgeInsetsDirectional.only(top: 10, bottom: 280),
*/

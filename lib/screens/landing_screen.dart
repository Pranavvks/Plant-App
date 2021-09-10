import 'package:flutter/material.dart';
import 'package:ginky_plants/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const double padding = 25;
    final ThemeData themeData = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
            width: size.width,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: padding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BorderBox(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.menu,
                          color: COLOR_BLACK,
                        ),
                      ),
                      Text(
                        "Plantly.",
                        style: themeData.textTheme.headline1,
                      ),
                      BorderBox(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.shopping_bag_rounded,
                          color: Colors.green[700],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Divider(
                    height: 100,
                    thickness: 2,
                    color: Colors.black12,
                  ),
                ),
              ],
            )),
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

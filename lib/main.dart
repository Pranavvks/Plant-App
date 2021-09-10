import 'package:flutter/material.dart';
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
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: COLOR_BLACK,
        ),
        title: Text(
          "Plantly.",
          style: themeData.textTheme.headline1,
        ),
        actions: [Icon(Icons.shopping_bag_outlined)],
      ),
    );
  }
}
// class CreateAppBar extends StatelessWidget with PreferredSizeWidget {
//   get preferredSize => Size.fromHeight(50);
//   CreateAppBar({Key key})
//       : super(
//           key: key,
//         );
//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     const double padding = 25;
//     final ThemeData themeData = Theme.of(context);
//     return PreferredSize(
//       preferredSize: const Size(double.infinity, kToolbarHeight),
//       child: Container(
//         width: size.width,
//         height: size.height,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(
//               height: 40,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: padding),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Icon(
//                     Icons.menu,
//                     color: COLOR_BLACK,
//                   ),
//                   Text(
//                     "Plantly.",
//                     style: themeData.textTheme.headline1,
//                   ),
//                   Icon(
//                     Icons.shopping_bag_rounded,
//                     color: Colors.green[700],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

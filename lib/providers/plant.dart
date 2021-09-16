import 'package:flutter/material.dart';

class Plant with ChangeNotifier {
  String plantName;
  String plantImg;
  double price;

  Plant(
      {@required this.plantName,
      @required this.plantImg,
      @required this.price});
}

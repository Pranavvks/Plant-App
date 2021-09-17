import 'package:flutter/material.dart';

class Plant with ChangeNotifier {
  String plantid;
  String plantName;
  String plantImg;
  double price;

  Plant({
    @required String plantid,
    @required this.plantName,
    @required this.plantImg,
    @required this.price,
  });
}

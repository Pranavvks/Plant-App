import 'package:flutter/material.dart';
import './plant.dart';

class Plants with ChangeNotifier {
  List<Plant> _items = [
    Plant(
        plantName: 'Morning Glory',
        plantImg:
            'https://raw.githubusercontent.com/Ivaskuu/plantly/master/res/plant1.png',
        price: 45),
    Plant(
        plantName: 'Sunshine Glory',
        plantImg:
            'https://github.com/Ivaskuu/plantly/blob/master/res/plant2.png?raw=true',
        price: 15),
    Plant(
        plantName: 'New Day Hope',
        plantImg:
            'https://github.com/Ivaskuu/plantly/blob/master/res/plant3.png?raw=true',
        price: 29.99),
  ];

  List<Plant> get items {
    return [..._items];
  }

  void addPlant() {
    // _items.add(value);
    notifyListeners();
  }
}
// This class will soon be used by the provider package which
// uses inherited widgets to establish a communication channel
// between this class and widgets that are interested for this class.
// We need to turn this into a data container

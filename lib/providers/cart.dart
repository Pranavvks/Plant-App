import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;
  final String imageurl;

  CartItem({
    this.id,
    this.title,
    this.quantity,
    this.price,
    this.imageurl,
  });
}

class Cart with ChangeNotifier {
  // Id of the cart item is different from product id.
  // For every cart item we will have one id.
  Map<String, CartItem> _items = {};

  // Cart(String id, String title, int quantity, double price, String imageurl);

  Map<String, CartItem> get items {
    return {..._items};
  }

  void addItem(String productId, double price, String title, String imageurl) {
    // First check if have the cart item which is to be added in
    // the cart. car1 -> 1  car`

    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (existingCartItem) => CartItem(
              id: existingCartItem.id,
              title: existingCartItem.title,
              price: existingCartItem.price,
              quantity: existingCartItem.quantity + 1,
              imageurl: existingCartItem.imageurl));
      // From the update method it finds the req key and
      // finds the item in the list and updates
    }

    _items.putIfAbsent(
        productId,
        () => CartItem(
              id: DateTime.now().toString(),
              title: title,
              price: price,
              quantity: 1,
              imageurl: imageurl,
            ));
  }

  notifyListeners();
}

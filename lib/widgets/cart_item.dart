import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String id;
  final double price;
  final int quantity;
  final String title;
  final String image;

  CartItem(this.id, this.price, this.quantity, this.title, this.image);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          leading: Image.network(image),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
          ),
          subtitle: Text(
            '\$$price',
            style: TextStyle(
                color: Colors.red, fontSize: 15, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(Icons.delete),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../providers/cart.dart' show Cart;
import '../widgets/cart_item.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  // final int id;

  // CartScreen(this.id);

  static const routeName = '/cart-screen';

  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    // final cart = CartData.items;

    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Row(
            children: [
              Text("Shopping cart",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.black)),
              Spacer(),
              Icon(Icons.cancel_outlined),
            ],
          ),

          // margin: EdgeInsets.only(right: 340, top: 15),

          SizedBox(
            height: 70,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) => CartItem(
                cart.items.values.toList()[index].id,
                cart.items.values.toList()[index].price,
                cart.items.values.toList()[index].quantity,
                cart.items.values.toList()[index].title,
                cart.items.values.toList()[index].imageurl),
            // We use expanded widget in the column so that our item takes as much space that is left in the
            // column
          ))
          // CartData.addItem(productId, price, title)
        ],
      ),
    ));
  }
}

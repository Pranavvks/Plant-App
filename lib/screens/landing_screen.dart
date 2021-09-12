import 'package:flutter/material.dart';
import 'package:ginky_plants/dummy_data.dart';
import 'package:ginky_plants/screens/cart_screen.dart';
import '../utils/pricebox.dart';
import '../utils/textbox.dart';
import '../utils/buynowbox.dart';

class OurPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    int x;
    void acceptIndex(int index) {
      x = index;
    }

    void AddToCart(BuildContext context, int pageno) {
      print(pageno);
      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        return CartScreen(x);
      }));
    }

    return Stack(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsetsDirectional.only(top: 10, bottom: 280),
          child: PageView.builder(
              controller: PageController(
                viewportFraction: 1.0,
              ),
              itemCount: plantsList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                acceptIndex(index);
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
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  width: 60,
                                  height: 60),
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
                margin: EdgeInsetsDirectional.only(top: 410, end: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.green,
                    ),
                    Text(
                      " 496",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w900),
                    ),
                    Spacer(),
                    Text(
                      "Share",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: InkWell(
                  splashColor: themeData.primaryColor,
                  onTap: () => AddToCart(context, x),
                  child: BuyNowBox(
                      child: Center(
                        child: Text("Add to Cart",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.w900)),
                      ),
                      width: double.infinity,
                      height: double.infinity),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

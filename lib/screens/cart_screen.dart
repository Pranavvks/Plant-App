import 'package:flutter/material.dart';
import 'package:ginky_plants/dummy_data.dart';
import 'package:ginky_plants/providers/plant.dart';
import 'package:ginky_plants/providers/plants.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  // final int id;

  // CartScreen(this.id);

  static const routeName = '/cart-screen';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, int>;
    final id = routeArgs['id'];
    final PlantsData = Provider.of<Plants>(context);
    final plants = PlantsData.items;

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
            child: Card(
              child: ListTile(
                leading: Image.network(plants[id].plantImg),
                title: Text(
                  plants[id].plantName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                trailing: Icon(Icons.delete),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:ginky_plants/dummy_data.dart';
import 'package:ginky_plants/models/plant.dart';

class CartScreen extends StatelessWidget {
  final int id;

  CartScreen(this.id);

  @override
  Widget build(BuildContext context) {
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
                leading: Image.network(plantsList[id].plantImg),
                title: Text(
                  plantsList[id].plantName,
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
/*
return SizedBox(
    height: 210,
    child: Card(
      child: Column(
        children: [
          ListTile(
            title: const Text(
              '1625 Main Street',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: const Text('My City, CA 99984'),
            leading: Icon(
              Icons.restaurant_menu,
              color: Colors.blue[500],
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              '(408) 555-1212',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            ),
          ),
          ListTile(
            title: const Text('costa@example.com'),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    ),
  );
}


child: Container(
              
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Card(
                child: Column(
                  children: [
                    Text(plantsList[id].plantName),
                    Image.network(plantsList[id].plantImg),
                  ],
                ),
              ),
            ),


*/
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget{

  Widget buildListTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: TextStyle(fontSize: 16)),
    );
  }

  Widget build(BuildContext context) {

    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Text('ZOMATO', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28, color: Colors.white))
          ),
          buildListTile(Icons.restaurant, 'Meals'),
          // SizedBox(height: 1),
          buildListTile(Icons.settings, 'Filters'),
        ]
      ),
    );
  }

}
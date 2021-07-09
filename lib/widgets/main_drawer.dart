import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget{

  Widget buildListTile(IconData icon, String title, Function tabHandler) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: TextStyle(fontSize: 16)),
      onTap: tabHandler,
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
          SizedBox(height: 15),
          buildListTile(Icons.restaurant, 'Meals', () => Navigator.of(context).pushReplacementNamed('/')),
          buildListTile(Icons.settings, 'Filters', () => Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName)),
        ]
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:meals_app/screens/meals_screen.dart';

class CategoriesItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoriesItem(this. id, this.title, this.color);

  void navigator(BuildContext context) {
    Navigator.of(context).pushNamed(MealsScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  Widget build(BuildContext context) {
    return InkWell(
          onTap: () => navigator(context),
          splashColor: Colors.pink,
          borderRadius: BorderRadius.circular(15),
          child: Container(
          padding: EdgeInsets.all(20),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.6),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}

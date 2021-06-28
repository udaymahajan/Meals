import 'package:flutter/material.dart';
import 'package:meals_app/meals_screen.dart';

class CategoryItems extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItems(this. id, this.title, this.color);

  void navigator(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => Meals(id, title),),);
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

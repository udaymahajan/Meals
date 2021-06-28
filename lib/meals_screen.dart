import 'package:flutter/material.dart';
import './category_list.dart';
import 'meals_items.dart';

class Meals extends StatelessWidget {
  final String title;
  final String id;

  Meals(this.id, this.title);

  @override
  Widget build(BuildContext context) {


    final categoryMeals = MealsList.where((meal) {
      return meal.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
            return MealItem(
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
            );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../widgets/meals_items.dart';
import '../models/meals_model.dart';

class MealsScreen extends StatelessWidget {

  static const routeName = '/mealsScreen';

  final List<Meal> filteredMeals;

  MealsScreen(this.filteredMeals);

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;

    final id = routeArgs['id'];
    final title = routeArgs['title'];

    final categoryMeals = filteredMeals.where((meal) {
      return meal.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
            return MealItem(
              id: categoryMeals[index].id,
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

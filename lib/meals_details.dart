import 'package:flutter/material.dart';
import 'category_list.dart';

class MealDetails extends StatelessWidget {

  final String title;
  final String id;

  MealDetails(this.id, this.title);

  Widget buildtext(text) {
    return Container(
      child: Text(text),
    );
  }

  Widget buildlist(context, selectedMeal) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) => Card(child: Text(selectedMeal.ingredients[index]),
        ),
        itemCount: selectedMeal.length
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedMeal = MealsList.firstWhere((meal) => meal.id == id);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(children: [
        Container(
          height: 300,
          width: double.infinity,
          child: Image.network(selectedMeal.imageUrl),
          ),
        buildtext('Ingredients'),
        buildlist(context, selectedMeal)
      ],)
    );
  }
}
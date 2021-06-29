import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetails extends StatelessWidget {

  final String id;

  MealDetails(this.id);

  Widget buildtext(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(text, style: TextStyle(fontSize: 22),),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      height: 190,
      width: 350,
      child: child
    );
  }


  @override
  Widget build(BuildContext context) {
    final selectedMeal = MealsList.firstWhere((meal) => meal.id == id);
    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title)),
      body: SingleChildScrollView(
              child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
              ),
            ),
          Divider(),
          buildtext('Ingredients'),
          Divider(),
          buildContainer(ListView.builder(
              itemBuilder: (ctx, index) => Card(
                color: Colors.amber,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(selectedMeal.ingredients[index])),
                ),
              itemCount: selectedMeal.ingredients.length
            ),
          ),
          Divider(),
          buildtext('Steps'),
          Divider(),
          buildContainer(ListView.builder(
              itemBuilder: (ctx, index) => Column(
                  children: [ListTile(
                  leading: CircleAvatar(child: Text('# ${index+1}'),),
                  title: Text(selectedMeal.steps[index]),
                  ),
                  Divider(),
                  ]),
              itemCount: selectedMeal.steps.length,
              ),
            )
        ],),
      )
    );
  }
}
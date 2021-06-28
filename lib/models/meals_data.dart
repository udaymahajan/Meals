import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Meal(
      {@required this.title,
      @required this.affordability,
      @required this.categories,
      @required this.duration,
      @required this.isGlutenFree,
      @required this.isLactoseFree,
      @required this.complexity,
      @required this.imageUrl,
      @required this.ingredients,
      @required this.isVegan,
      @required this.isVegetarian,
      @required this.id,
      @required this.steps});
}

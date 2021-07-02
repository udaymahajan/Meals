import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import './screens/meals_screen.dart';
import 'package:meals_app/screens/filters_screen.dart';
import './models/meals_model.dart';
import './screens/bottom_tabs_screen.dart';
// import './screens/tabs_screen.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Map<String, bool> filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  List<Meal> filteredMeals = MealsList;

  void savedFilters(Map<String, bool> filterData) {
    setState(() {
      filters = filterData;
      
      filteredMeals = MealsList.where((meal) {

        if(!meal.isGlutenFree && filters['gluten']) {
          return false;
        }
        if(!meal.isLactoseFree && filters['lactose']) {
          return false;
        }
        if(!meal.isVegan && filters['vegan']) {
          return false;
        }
        if(!meal.isVegetarian && filters['vegetarian']) {
          return false;
        }
        return true;
      } 
        
      ).toList();
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Meals',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1)
        ),
        // home: BottomTabsScreen(),
        // home: TabsScreen()
        routes: {
          '/': (ctx) => BottomTabsScreen(),
          MealsScreen.routeName: (ctx) => MealsScreen(filteredMeals),
          FiltersScreen.routeName: (ctx) => FiltersScreen(savedFilters, filters),
        },
        );
  }
}

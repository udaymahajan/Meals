import 'package:flutter/material.dart';
import './category_screen.dart';
import './favorites_screen.dart';
import '../widgets/main_drawer.dart';
import '../models/meals_model.dart';

class BottomTabsScreen extends StatefulWidget {

  final List<Meal> favoriteMeals;

  BottomTabsScreen(this.favoriteMeals);

  State<StatefulWidget> createState() => BottomTabsScreenState();

}

class BottomTabsScreenState extends State<BottomTabsScreen> {

  int selectedPage = 0;

  void selectPage(int index) {     

      setState(() => selectedPage = index);

    }

  List<Map<String, Object>> page;

  void initState() {
    page = [

    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavoritesScreen(widget.favoriteMeals), 'title': 'Favorites'},
    
    ];
    super.initState();
  }  


  Widget build (BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(page[selectedPage]['title'])),
      drawer: MainDrawer(),
      body: page[selectedPage]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: selectedPage,
        onTap: selectPage,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
      ]),
      );

  }

}
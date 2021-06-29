import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_screen.dart';
import 'package:meals_app/dummy_data.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Meals',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1)
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Meals'),
          ),
          body: GridView(
            padding: EdgeInsets.all(10),
            children: CategoryList.map(
                (list) => CategoryItems(list.id, list.title, list.color)).toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
            ),
          ),
        ));
  }
}

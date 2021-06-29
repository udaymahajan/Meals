import 'package:flutter/material.dart';
import './screens/bottom_tabs_screen.dart';
// import './screens/tabs_screen.dart';

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
        home: BottomTabsScreen(),
        // home: TabsScreen()
        );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import './category_screen.dart';
// import './favorites_screen.dart';

// class TabsScreen extends StatefulWidget {

//   State<StatefulWidget> createState() {
//     return TabsScreenState();
//   }
// }

// class TabsScreenState extends State<TabsScreen> {

//   Widget build(BuildContext context) {

//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Meals'),
//           bottom: TabBar(
//             tabs:[
//               Tab(icon: Icon(Icons.category), text: 'Categories'),
//               Tab(icon: Icon(Icons.star), text: 'Favorites'),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             CategoriesScreen(),
//             FavoritesScreen(),
//           ],)
//       )
//     );
//   }
// }
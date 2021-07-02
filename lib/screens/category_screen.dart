import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/categories_item.dart';


class CategoriesScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(10),
        children: CategoryList.map((list) => CategoriesItem(list.id, list.title, list.color)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 1,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
        ),
    );
  }
}

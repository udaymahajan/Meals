import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {

  static const routeName = '/filters';
  
  final Function savedFilters;

  FiltersScreen(this.savedFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {

  var glutenFree = false;
  var lactoseFree = false;
  var vegetarian = false;
  var vegan = false;

  Widget buildSwitchListTile(String title, String subtitle, Function newValue, bool value) {
    return SwitchListTile(
      title: Text(title), 
      subtitle: Text(subtitle),
      value: value, 
      onChanged: newValue,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        actions: [
          IconButton(icon: Icon(Icons.save), onPressed: () {
            final Map<String, bool> selectedFilters = {
              'gluten': glutenFree,
              'lactose': lactoseFree,
              'vegan': vegan,
              'vegetarian': vegetarian,
            };
            widget.savedFilters(selectedFilters);
          })
        ],  
      ),
      drawer: MainDrawer(),
      body: Column(children: [
        Container(
          child: Text('Adjust your meals', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20,),),
          padding: EdgeInsets.all(20),
        ),
        Expanded(child: ListView(
          children: [
            buildSwitchListTile('Gluten Free', 'All meals shown will be gluten free', (newValue) => setState(() => glutenFree = newValue), glutenFree),
            buildSwitchListTile('Lactose Free', 'All meals shown will be lactose free', (newValue) => setState(() => lactoseFree = newValue), lactoseFree),
            buildSwitchListTile('Vegetarian', 'All meals shown will be vegetarian', (newValue) => setState(() => vegetarian = newValue), vegetarian),
            buildSwitchListTile('Vegan', 'All meals shown will be vegan', (newValue) => setState(() => vegan = newValue), vegan),
          ],
        ),)
      ],)
    );
  }
}
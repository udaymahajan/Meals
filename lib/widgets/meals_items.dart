import 'package:flutter/material.dart';
import '../models/meals_model.dart';
import '../screens/meals_details_screen.dart';

class MealItem extends StatelessWidget {

  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({this.id, this.title, this.duration, this.imageUrl, this.affordability, this.complexity});

  String get complexityText {
    switch(complexity) {
      case Complexity.Simple:
      return 'Simple';
      case Complexity.Challenging:
      return 'Challenging';
      case Complexity.Hard:
      return 'Hard';
      default:
      return 'Unknown';
    }
  }

  String get affordabilityText {
    switch(affordability) {
      case Affordability.Affordable:
      return 'Affordable';
      case Affordability.Luxurious:
      return 'Luxurious';
      case Affordability.Pricey:
      return 'Pricey';
      default: 
      return 'Unknown';
    }
  }

  void selectMeal(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => MealDetails(id)));
  }

  Widget build (BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(children: [
          Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(imageUrl, height: 250, width: double.infinity, fit: BoxFit.cover,),
            ),
            Positioned(
              bottom: 20,
              right: 10,
              child: Container(
                width: 300,
                color: Colors.black54,
                padding: EdgeInsets.all(10),
                child: Text(
                  title,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    ),
                  ),
              ),
            ),
          ],),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Row(children: [
                Icon(Icons.schedule),
                SizedBox(width: 5),
                Text('$duration min'),
              ],),
              Row(children: [
                Icon(Icons.work),
                SizedBox(width: 5),
                Text(complexityText),
              ],),
              Row(children: [
                Icon(Icons.attach_money),
                SizedBox(width: 5),
                Text(affordabilityText),
              ],)
            ],),
          )
        ],),
        )
    );
  }
}


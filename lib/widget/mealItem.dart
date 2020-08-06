import 'package:bhojan/model/meal.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final String title;
  final Complexity complexity;
  final int duration;
  final Affordability affordability;
  final String imageUrl;

  const MealItem(
      {@required this.title,
      @required this.complexity,
      @required this.duration,
      @required this.affordability,
      @required this.imageUrl}
      );

  String get complexityText {
    String complx;
    switch (complexity) {
      case Complexity.Simple:
        complx = "simple";
        break;
      case Complexity.Challenging:
        complx = "Challenging";
        break;
      case Complexity.Hard:
        complx = "Hard";
        break;
    }
    return complx;
  }String get affordabilityText {
    String afford;
    switch (affordability) {
      case Affordability.Affordable:
        afford = "Affordable";
        break;
      case Affordability.Pricey:
        afford = "Pricey";
        break;
      case Affordability.Luxurious:
        afford = "Luxurious";
        break;
    }
    return afford;
  }

  void mealDetail() {}

  @override
  Widget build(BuildContext context) {
    print("hhhhh");
    return InkWell(
      onTap: mealDetail,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(imageUrl,
                      height: 250, width: double.infinity, fit: BoxFit.cover),
                ),
                Positioned(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      color: Colors.black54,
                      width: 240,
                      child: Text(
                        title,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    bottom: 20,
                    right: 10)
              ],
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.schedule),
                        SizedBox(width: 6),
                        Text('$duration min')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.work),
                        SizedBox(width: 6),
                        Text(complexityText)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.attach_money),
                        SizedBox(width: 6),
                        Text(affordabilityText)
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

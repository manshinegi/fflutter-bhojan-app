import 'package:flutter/cupertino.dart';

class Meal {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final List<String> steps;
  final List<String> ingredients;
  final List<String> categories;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isGlutenFree;
  final Affordability affordability;


 const Meal({@required this.affordability ,@required this.id,@required this.title,@required this.imageUrl,@required this.duration,@required this.complexity,@required this.steps,@required this.ingredients,@required this.categories,@required this.isLactoseFree,@required this.isVegan,@required this.isVegetarian,@required this.isGlutenFree});
}

enum Affordability{Affordable, Pricey, Luxurious  }

enum Complexity { Simple, Challenging, Hard }

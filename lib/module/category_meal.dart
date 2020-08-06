import 'package:bhojan/contant/dummyData.dart';
import 'package:bhojan/widget/mealItem.dart';
import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeArg['title'];
    final id = routeArg['id'];

    final categoryMeals = DUMMY_MEALS.where((element) {
      return element.categories.contains(id);
    }).toList();
    print(id+"   "+categoryMeals.length.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          var catMeal = categoryMeals[index];
          print(categoryMeals[index].title);
         MealItem(title: catMeal.title, complexity: catMeal.complexity, duration: catMeal.duration,affordability: catMeal.affordability, imageUrl: catMeal.imageUrl);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}

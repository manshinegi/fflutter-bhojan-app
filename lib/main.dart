import 'file:///C:/Users/user/AndroidStudioProjects/bhojan/lib/module/category_meal.dart';
import 'package:flutter/material.dart';

import 'module/categoriesScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        canvasColor: Color.fromARGB(255, 254, 225, 1),
      ),
      home:CategoriesScreen(),
      routes:{
        "/category_meal" : (context)=> CategoryMealScreen(),
      }
    );
  }
}

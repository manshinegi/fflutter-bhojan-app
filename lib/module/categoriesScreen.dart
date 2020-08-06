import 'package:bhojan/contant/dummyData.dart';
import 'package:bhojan/main.dart';
import 'file:///C:/Users/user/AndroidStudioProjects/bhojan/lib/widget/CategoryItem.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Bhojan",
        )),
        body: GridView(
          padding: EdgeInsets.all(25),
          children:
              DUMMY_DATA.map((e) => CategoryItem(e.id , e.title, e.color)).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 3 / 2),
        ));
  }
}

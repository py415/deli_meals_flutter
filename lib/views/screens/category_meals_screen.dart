import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static String id = 'category_meals_screen';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('The Recipe for the Category!'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../views/screens/category_meals_screen.dart';

// Blueprint for category item widget.
class CategoryItem extends StatelessWidget {
  // ID for meal category (e.g. Italian is 1).
  final String id;
  // Meal category title (e.g. Italian, Quick & Easy, Hamburgers, etc...).
  final String title;
  // Meal category color (e.g. Italian is purple).
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  // Segue to selected meal category screen.
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

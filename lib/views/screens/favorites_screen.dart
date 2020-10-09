import 'package:flutter/material.dart';

import '../../models/meal.dart';
import '../../models/widgets/meal_item.dart';

// Blueprint for favorites screen.
class FavoritesScreen extends StatefulWidget {
  // Route name to screen.
  static const String routeName = '/favorites';

  // List of meal recipes that were favorited by the user.
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    // Check if there are any meals that were favorited by user.
    if (widget.favoriteMeals.isEmpty) {
      // Let the user know if no favorites were added.
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      // Show list of favorited meal recipes.
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: widget.favoriteMeals[index].id,
            title: widget.favoriteMeals[index].title,
            imageUrl: widget.favoriteMeals[index].imageUrl,
            duration: widget.favoriteMeals[index].duration,
            complexity: widget.favoriteMeals[index].complexity,
            affordability: widget.favoriteMeals[index].affordability,
          );
        },
        itemCount: widget.favoriteMeals.length,
      );
    }
  }
}

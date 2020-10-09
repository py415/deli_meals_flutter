import 'package:flutter/foundation.dart';

// Complexity classification.
enum Complexity { Simple, Challenging, Hard }

// Affordability classification.
enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

// Blueprint for Meal recipe.
class Meal {
  // Id for meal recipe (e.g. Italian = 1).
  final String id;
  // Cuisine category for meal recipe (e.g. Thai cuisine).
  final List<String> categories;
  // Dish name of meal recipe (e.g. Hawaii Toast).
  final String title;
  // Url for dish image (e.g. link to Spaghetti image).
  final String imageUrl;
  // List of ingredents required for meal recipe.
  final List<String> ingredients;
  // List of steps to do for meal recipe.
  final List<String> steps;
  // Estimated duration to cook dish with meal recipe.
  final int duration;
  // Complexity classification for meal recipe.
  final Complexity complexity;
  // Affordability classification for meal recipe.
  final Affordability affordability;
  // Whether meal is gluten free or not.
  final bool isGlutenFree;
  // Whether meal is lactose free or not.
  final bool isLactoseFree;
  // Whether meal is vegan or not.
  final bool isVegan;
  // Whether meal is vegetarian or not.
  final bool isVegetarian;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
  });
}

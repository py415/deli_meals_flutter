import 'package:flutter/material.dart';

import '../../models/meal.dart';
import '../../views/screens/meal_detail_screen.dart';

// Blueprint for meal item widget.
class MealItem extends StatelessWidget {
  // Id used to identify specific meal item (e.g. 1 for Spaghetti with Tomato Sauce).
  final String id;
  // Name of meal recipe (e.g. Toast Hawaii).
  final String title;
  // Image url of meal recipe (e.g. link to Toast Hawaii recipe image).
  final String imageUrl;
  // Estimated duration to cook meal (e.g. 20 minutes).
  final int duration;
  // Complexity of meal recipe (e.g. Easy).
  final Complexity complexity;
  // Affordability of meal recipe (e.g. Affordable).
  final Affordability affordability;

  MealItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
  });

  // Get String for meal recipe complexity based on Complexity (enum) classification.
  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unknown';
    }
  }

  // Get String for meal recipe affordability based on Affordability (enum) classification.
  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      default:
        return 'Unknown';
    }
  }

  // Segue to meal recipe details screen when user taps on specific meal recipe.
  void selectMeal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      MealDetailScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Segue to meal recipe detail screen.
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(children: [
          Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(
                imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 0,
              child: Container(
                width: 300,
                color: Colors.black54,
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(width: 6),
                    Text('$duration min'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.work),
                    SizedBox(width: 6),
                    Text('$complexityText'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.attach_money),
                    SizedBox(width: 6),
                    Text('$affordabilityText'),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

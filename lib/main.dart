import 'package:flutter/material.dart';

import 'views/screens/categories_screen.dart';
import 'views/screens/category_meals_screen.dart';
import 'views/screens/meal_detail_screen.dart';
import 'views/screens/filters_screen.dart';
import 'views/screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: TabsScreen.id,
      routes: {
        TabsScreen.id: (ctx) => TabsScreen(),
        FiltersScreen.id: (ctx) => FiltersScreen(),
        CategoriesScreen.id: (ctx) => CategoriesScreen(),
        CategoryMealsScreen.id: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.id: (ctx) => MealDetailScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}

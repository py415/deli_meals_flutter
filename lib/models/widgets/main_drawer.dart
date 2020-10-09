import 'package:flutter/material.dart';

import '../../views/screens/tabs_screen.dart';
import '../../views/screens/filters_screen.dart';

// Blueprint for main drawer widget.
class MainDrawer extends StatelessWidget {
  // Widget for list tile in main drawer (e.g. Meals or Filter).
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      // Segue to selected list tile (e.g. If you tap 'Meals', segue to Meals screen).
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(height: 20),
          buildListTile(
            'Meals',
            Icons.restaurant,
            () {
              // Segue to Meals category screen when user taps 'Meals' tile list.
              Navigator.of(context).pushReplacementNamed(TabsScreen.routeName);
            },
          ),
          buildListTile(
            'Filters',
            Icons.settings,
            () {
              // Segue to Filters screen when user taps 'Filters' tile list.
              Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

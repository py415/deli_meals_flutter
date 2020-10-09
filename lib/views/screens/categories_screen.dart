import 'package:flutter/material.dart';

import '../../dummy_data.dart';
import '../../models/widgets/category_item.dart';

// Blueprint for cuisine category screen.
class CategoriesScreen extends StatelessWidget {
  // Route name to screen.
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryItem(
              catData.id,
              catData.title,
              catData.color,
            ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}

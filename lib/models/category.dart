import 'package:flutter/material.dart';

// Blueprint for cuisine category.
class Category {
  // Id for cuisine category (e.g. Italian = 1).
  final String id;
  // Cuisine category title (e.g. Chinese).
  final String title;
  // Cuisine category color (e.g. Blue).
  final Color color;

  const Category({
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
  });
}

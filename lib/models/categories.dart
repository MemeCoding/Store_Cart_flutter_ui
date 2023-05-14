import 'package:flutter/material.dart';

class Category {
  final String imageUrl;
  final String name;

  Category(this.imageUrl, this.name);
}

final _household = Category(
  'assets/categories/household.png',
  'Household',
);

final _grocery = Category(
  'assets/categories/grocery.png',
  'Grocery',
);

final _liqour = Category(
  'assets/categories/liqour.png',
  'Liqour',
);

final _cheese = Category(
  'assets/categories/cheese.png',
  'Cheese',
);

final List<Category> all_categories = [_household, _grocery, _liqour, _cheese];

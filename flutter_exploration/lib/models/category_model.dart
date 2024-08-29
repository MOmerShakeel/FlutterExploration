import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel(
      {required this.name, required this.iconPath, required this.boxColor});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: "Ramen",
        iconPath: "assets/icons/saladicon.svg",
        boxColor: Colors.lightGreen.shade200));

    categories.add(CategoryModel(
        name: "BBQ",
        iconPath: "assets/icons/bbqicon.svg",
        boxColor: Colors.amber.shade200));

    categories.add(CategoryModel(
        name: "Sake",
        iconPath: "assets/icons/drinksicon.svg",
        boxColor: Colors.lightGreen.shade200));

    categories.add(CategoryModel(
        name: "Dessert",
        iconPath: "assets/icons/desserticon.svg",
        boxColor: Colors.amber.shade200));

    return categories;
  }
}

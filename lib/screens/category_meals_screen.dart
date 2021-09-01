import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import '../models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {

  final List<Meal> _availableMeals;

  CategoryMealsScreen(this._availableMeals);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    String categoryTitle = routeArgs['title'] as String;
    String categoryId = routeArgs['id'] as String;
    final categoryMeals = _availableMeals
        .where((meal) => meal.categories.contains(categoryId))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: MealItem(categoryMeals[index]),
          );
        },
      ),
    );
  }
}

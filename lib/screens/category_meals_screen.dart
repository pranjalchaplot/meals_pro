import 'package:flutter/material.dart';
import 'package:meals_pro/dummy_data.dart';
import 'package:meals_pro/widgets/meals_item.dart';

import '../models/meal.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryTitle;
  final String categoryId;
  final Color bgColor;
  const CategoryMealsScreen(this.categoryId, this.categoryTitle, this.bgColor,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_MEALS
        .where(
          (meal) => meal.categories.contains(categoryId),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        // backgroundColor: bgColor,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [bgColor.withOpacity(0.8), bgColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            Meal currentMeal = categoryMeals[index];
            return MealItem(
              complexity: currentMeal.complexity,
              duration: currentMeal.duration,
              imageUrl: currentMeal.imageUrl,
              title: currentMeal.title,
              affordability: currentMeal.affordability,
              id: currentMeal.id,
            ); //needs work
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}

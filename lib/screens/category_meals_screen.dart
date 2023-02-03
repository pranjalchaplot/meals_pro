import 'package:flutter/material.dart';
import 'package:meals_pro/dummy_data.dart';

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
            return Text(
              categoryMeals[index].title,
            ); //needs work
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}

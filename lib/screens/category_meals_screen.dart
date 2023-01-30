import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryTitle;
  final String categoryId;
  final Color bgColor;
  const CategoryMealsScreen(this.categoryId, this.categoryTitle, this.bgColor,
      {super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Text('The Recipie of $categoryTitle dish'),
      ),
    );
  }
}

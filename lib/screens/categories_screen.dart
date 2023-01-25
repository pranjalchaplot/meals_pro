import 'package:flutter/material.dart';
import 'package:meals_pro/dummy_data.dart';
import 'package:meals_pro/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meals Pro',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 350,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 30),
        children: [
          ...DUMMY_CATEGORIES.map(
            (catData) => CategoryItem(catData.title, catData.bgColor),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('recipes app bar, lol.'),
      ),
      body: const Center(
        child: Text('The \'Pro\' Recipie'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meals_pro/screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Meals Pro',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CategoriesScreen());
  }
}

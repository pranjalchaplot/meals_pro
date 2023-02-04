import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  final String id;
  const MealDetailScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(id)),
    );
  }
}

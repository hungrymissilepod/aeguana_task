import 'package:flutter/material.dart';
import 'package:flutter_app_template/models/food_model.dart';
import 'package:flutter_app_template/ui/views/home/ui/food_tile.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class FoodSection extends StatelessWidget {
  const FoodSection({
    super.key,
    required this.index,
    required this.controller,
    required this.title,
    required this.food,
  });

  final int index;
  final AutoScrollController controller;
  final String title;
  final List<Food> food;

  @override
  Widget build(BuildContext context) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: controller,
      index: index,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 24),
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Futura',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xFF333333),
              ),
            ),
            const SizedBox(height: 7),
            Column(
              children: food.map((e) => FoodTile(food: e)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

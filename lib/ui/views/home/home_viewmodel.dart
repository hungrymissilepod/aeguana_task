import 'package:flutter/material.dart';
import 'package:aeguana_task/app/app.locator.dart';
import 'package:aeguana_task/models/food_model.dart';
import 'package:aeguana_task/services/food_service.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final FoodService _foodService = locator<FoodService>();

  late final AutoScrollController controller;

  int currentSection = 0;

  List<Food> get meals => _foodService.meals;
  List<Food> get snakcs => _foodService.snacks;
  List<Food> get sweets => _foodService.sweets;
  List<Food> get drinks => _foodService.drinks;

  HomeViewModel(BuildContext context) {
    controller = AutoScrollController(
      viewportBoundaryGetter: () => Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: Axis.vertical,
    );
  }

  void scrollToSection(int index) async {
    currentSection = index;
    await controller.scrollToIndex(currentSection, preferPosition: AutoScrollPosition.begin);
    controller.highlight(currentSection);
  }
}

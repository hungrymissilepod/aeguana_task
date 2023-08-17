import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  final PageController controller = PageController();
  int currentIndex = 0;

  void onPageViewSwipe(int index) {
    currentIndex = index;
    rebuildUi();
  }

  void onBottomNavBarTapped(int index) {
    currentIndex = index;
    controller.animateToPage(currentIndex, duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
    rebuildUi();
  }
}

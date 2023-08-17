import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  final PageController controller = PageController();
  int currentIndex = 0;

  String get appBarTitle {
    switch (currentIndex) {
      case 0:
        return 'Home';
      case 1:
        return 'Scanning QR code';
      case 2:
        return 'Account';
      default:
        return 'Home';
    }
  }

  void onPageViewSwipe(int index) {
    currentIndex = index;
    rebuildUi();
  }

  void onBottomNavBarTapped(int index) {
    currentIndex = index;
    _animateToPage();
  }

  void _animateToPage() {
    controller.animateToPage(currentIndex, duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
    rebuildUi();
  }

  void onAppBarLeadingTapped() {
    currentIndex = 0;
    _animateToPage();
  }
}

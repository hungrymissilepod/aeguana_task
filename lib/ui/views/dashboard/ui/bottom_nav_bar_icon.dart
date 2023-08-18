import 'package:aeguana_task/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class BottomNavBarIcon extends StatelessWidget {
  const BottomNavBarIcon({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.icon,
  });

  final int index;
  final int currentIndex;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Image(
        color: currentIndex == index ? kPrimaryColor : kBottomNavDisabledColor,
        image: AssetImage(
          icon,
        ),
      ),
    );
  }
}

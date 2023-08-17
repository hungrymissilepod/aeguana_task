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
        color: currentIndex == index ? const Color(0xFF0D3144) : const Color(0xFF808080),
        image: AssetImage(
          icon,
        ),
      ),
    );
  }
}

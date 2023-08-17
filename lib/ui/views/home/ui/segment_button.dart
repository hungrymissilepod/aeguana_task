import 'package:flutter/material.dart';
import 'package:aeguana_task/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SegmentButton extends ViewModelWidget<HomeViewModel> {
  const SegmentButton({
    super.key,
    required this.index,
    required this.label,
  });

  final int index;
  final String label;

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: index == viewModel.currentSection ? Colors.black : const Color(0xFF616161),
      ),
    );
  }
}

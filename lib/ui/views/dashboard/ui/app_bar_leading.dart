import 'package:aeguana_task/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:aeguana_task/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AppBarLeading extends ViewModelWidget<DashboardViewModel> {
  const AppBarLeading({super.key});

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Visibility(
      visible: viewModel.currentIndex != 0,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipOval(
          child: Material(
            color: Colors.white,
            child: InkWell(
              onTap: () => viewModel.onAppBarLeadingTapped(),
              child: const SizedBox(
                height: 20,
                width: 20,
                child: Center(
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: kNearBlack2Color,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

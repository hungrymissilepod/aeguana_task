import 'package:aeguana_task/ui/common/app_colors.dart';
import 'package:aeguana_task/ui/common/app_strings.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:aeguana_task/ui/views/home/ui/food_section.dart';
import 'package:aeguana_task/ui/views/home/ui/segment_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Material(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: CustomSlidingSegmentedControl<int>(
              isStretch: true,
              initialValue: 0,
              children: const {
                0: SegmentButton(
                  index: 0,
                  label: kMealsSegment,
                ),
                1: SegmentButton(
                  index: 1,
                  label: kSnacksSegment,
                ),
                2: SegmentButton(
                  index: 2,
                  label: kSweetsSegment,
                ),
                3: SegmentButton(
                  index: 3,
                  label: kDrinksSegment,
                ),
              },
              innerPadding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: kHomeViewBackgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              thumbDecoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInToLinear,
              onValueChanged: (index) {
                viewModel.scrollToSection(index);
              },
            ),
          ),
          Expanded(
            child: Container(
              color: kHomeViewBackgroundColor,
              child: ListView(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                controller: viewModel.controller,
                children: <Widget>[
                  FoodSection(
                    index: 0,
                    controller: viewModel.controller,
                    title: kMealsSegment,
                    food: viewModel.meals,
                  ),
                  FoodSection(
                    index: 1,
                    controller: viewModel.controller,
                    title: kSnacksSegment,
                    food: viewModel.snakcs,
                  ),
                  FoodSection(
                    index: 2,
                    controller: viewModel.controller,
                    title: kSweetsSegment,
                    food: viewModel.sweets,
                  ),
                  FoodSection(
                    index: 3,
                    controller: viewModel.controller,
                    title: kDrinksSegment,
                    food: viewModel.drinks,
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel(context);
}

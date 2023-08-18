import 'package:aeguana_task/ui/common/app_colors.dart';
import 'package:aeguana_task/ui/common/app_strings.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:aeguana_task/ui/views/account/account_view.dart';
import 'package:aeguana_task/ui/views/dashboard/ui/app_bar_leading.dart';
import 'package:aeguana_task/ui/views/dashboard/ui/bottom_nav_bar_icon.dart';
import 'package:aeguana_task/ui/views/home/home_view.dart';
import 'package:aeguana_task/ui/views/pay/pay_view.dart';
import 'package:stacked/stacked.dart';

import 'dashboard_viewmodel.dart';

class DashboardView extends StackedView<DashboardViewModel> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DashboardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: kAppBarColor,
        leading: const AppBarLeading(),
        title: Text(
          viewModel.appBarTitle,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: kNearBlack2Color,
          ),
        ),
      ),
      body: PageView(
        controller: viewModel.controller,
        children: const <Widget>[
          HomeView(),
          PayView(),
          AccountView(),
        ],
        onPageChanged: (int index) {
          viewModel.onPageViewSwipe(index);
        },
      ),
      bottomNavigationBar: ConvexAppBar(
        onTap: (int index) {
          viewModel.onBottomNavBarTapped(index);
        },
        backgroundColor: Colors.white,
        activeColor: kPrimaryColor,
        color: kBottomNavDisabledColor,
        style: TabStyle.fixed,
        items: [
          TabItem(
            icon: BottomNavBarIcon(
              index: 0,
              currentIndex: viewModel.currentIndex,
              icon: 'assets/home/home_icon.png',
            ),
            title: kBottomNavBarHome,
          ),
          TabItem(
            icon: BottomNavBarIcon(
              index: 1,
              currentIndex: viewModel.currentIndex,
              icon: 'assets/home/pay_icon.png',
            ),
            title: kBottomNavBarPay,
          ),
          TabItem(
            icon: BottomNavBarIcon(
              index: 2,
              currentIndex: viewModel.currentIndex,
              icon: 'assets/home/account_icon.png',
            ),
            title: kBottomNavBarAccount,
          ),
        ],
      ),
    );
  }

  @override
  DashboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DashboardViewModel();
}

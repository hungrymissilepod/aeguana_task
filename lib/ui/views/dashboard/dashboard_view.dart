import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_template/ui/views/dashboard/ui/bottom_nav_bar_icon.dart';
import 'package:flutter_app_template/ui/views/home/home_view.dart';
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
      backgroundColor: const Color(0xFFF9F7F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFF349ED5),
        title: const Text(
          'Home',
          style: TextStyle(
            fontFamily: 'Futura',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF0A0F0F),
          ),
        ),
      ),
      body: PageView(
        controller: viewModel.controller,
        children: const <Widget>[
          HomeView(),
          Center(child: Text('pay')),
          Center(child: Text('profile')),
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
        activeColor: const Color(0xFF0D3144),
        color: const Color(0xFF808080),
        style: TabStyle.fixed,
        items: [
          TabItem(
            icon: BottomNavBarIcon(
              index: 0,
              currentIndex: viewModel.currentIndex,
              icon: 'assets/home/home_icon.png',
            ),
            title: 'Home',
            fontFamily: 'Futura',
          ),
          TabItem(
            icon: BottomNavBarIcon(
              index: 1,
              currentIndex: viewModel.currentIndex,
              icon: 'assets/home/pay_icon.png',
            ),
            title: 'Pay',
            fontFamily: 'Futura',
          ),
          TabItem(
            icon: BottomNavBarIcon(
              index: 2,
              currentIndex: viewModel.currentIndex,
              icon: 'assets/home/profile_icon.png',
            ),
            title: 'Profile',
            fontFamily: 'Futura',
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

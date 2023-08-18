import 'package:aeguana_task/ui/common/app_strings.dart';
import 'package:aeguana_task/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aeguana_task/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('DashboardViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());

    test('appBarTitle returns correct value for each page', () {
      final DashboardViewModel viewModel = DashboardViewModel();

      expect(viewModel.appBarTitle, kAppBarHome);

      viewModel.currentIndex = 1;
      expect(viewModel.appBarTitle, kAppBarPay);

      viewModel.currentIndex = 2;
      expect(viewModel.appBarTitle, kAppBarAccount);

      viewModel.currentIndex = 3;
      expect(viewModel.appBarTitle, kAppBarHome);
    });

    test('onPageViewSwipe will update currentIndex', () {
      final DashboardViewModel viewModel = DashboardViewModel();
      viewModel.onPageViewSwipe(2);
      expect(viewModel.currentIndex, 2);
    });
  });
}

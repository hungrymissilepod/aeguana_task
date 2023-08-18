import 'package:aeguana_task/app/app.router.dart';
import 'package:aeguana_task/ui/views/launch/launch_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aeguana_task/app/app.locator.dart';
import 'package:mockito/mockito.dart';

import '../helpers/test_helpers.dart';
import '../helpers/test_helpers.mocks.dart';

void main() {
  group('LoginViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());

    test('Calling navigateToDashboardView will call navigationService', () {
      final MockNavigationService mockNavigationService = getAndRegisterNavigationService();
      final LaunchViewModel viewModel = LaunchViewModel();

      viewModel.navigateToDashboardView();
      verify(mockNavigationService.replaceWithDashboardView()).called(1);
    });
  });
}

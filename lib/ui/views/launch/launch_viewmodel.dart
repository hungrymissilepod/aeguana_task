import 'package:flutter_app_template/app/app.locator.dart';
import 'package:flutter_app_template/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LaunchViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToDashboardView() {
    _navigationService.replaceWithDashboardView();
  }
}

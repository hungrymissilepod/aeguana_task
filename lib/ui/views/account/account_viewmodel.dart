import 'package:aeguana_task/app/app.locator.dart';
import 'package:aeguana_task/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked.dart';

class AccountViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToLaunchView() {
    _navigationService.replaceWithLaunchView();
  }
}

import 'package:flutter_app_template/app/app.locator.dart';
import 'package:flutter_app_template/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToDashboardView() {
    _navigationService.replaceWithDashboardView();
  }

  void onSignUpTapped() async {
    final Uri uri = Uri.parse('https://www.aeguana.com/');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}

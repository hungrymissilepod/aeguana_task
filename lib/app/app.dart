import 'package:flutter_app_template/ui/views/launch/launch_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter_app_template/ui/views/login/login_view.dart';
import 'package:flutter_app_template/services/authentication_service.dart';
import 'package:flutter_app_template/services/dio_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: LaunchView),
    MaterialRoute(page: LoginView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: DioService),
// @stacked-service
  ],
  logger: StackedLogger(),
)
class App {}

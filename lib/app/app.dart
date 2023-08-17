import 'package:aeguana_task/ui/views/launch/launch_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:aeguana_task/ui/views/login/login_view.dart';
import 'package:aeguana_task/services/authentication_service.dart';
import 'package:aeguana_task/services/dio_service.dart';
import 'package:aeguana_task/ui/views/dashboard/dashboard_view.dart';
import 'package:aeguana_task/services/food_service.dart';
import 'package:aeguana_task/ui/views/home/home_view.dart';
import 'package:aeguana_task/ui/views/pay/pay_view.dart';
import 'package:aeguana_task/ui/views/account/account_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: LaunchView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: PayView),
    MaterialRoute(page: AccountView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: DioService),
    LazySingleton(classType: FoodService),
// @stacked-service
  ],
  logger: StackedLogger(),
)
class App {}

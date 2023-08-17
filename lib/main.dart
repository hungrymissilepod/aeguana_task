import 'package:flutter/material.dart';
import 'package:flutter_app_template/app/app.locator.dart';
import 'package:flutter_app_template/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

/*
Note: In order to publish this app please remember to change the application ID

Android:
Change this value 'com.example.flutter_app_template'

iOS:
Change this value 'com.example.flutterAppTemplate'

Linux:
Change this value 'com.example.flutter_app_template'

MacOS:
Change this value 'com.example.flutterAppTemplate' and 'com.example.flutterAppTemplate.RunnerTests'

Windows:
Change these values in Runner.rc:
'com.example'
'flutter_app_template'
*/

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Futura',
      ),
      initialRoute: Routes.launchView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}

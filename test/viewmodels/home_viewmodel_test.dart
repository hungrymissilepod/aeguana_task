import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app_template/app/app.locator.dart';
import 'package:flutter_app_template/ui/views/launch/launch_viewmodel.dart';

import '../helpers/test_helpers.dart';

void main() {
  LaunchViewModel getModel() => LaunchViewModel();

  group('HomeViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}

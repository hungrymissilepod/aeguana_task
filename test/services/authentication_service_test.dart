import 'package:flutter_test/flutter_test.dart';
import 'package:aeguana_task/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('AuthenticationServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}

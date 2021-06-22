import 'package:flutter_starter_stacked/app/app.router.dart';
import 'package:flutter_starter_stacked/ui/startup/startup_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('StartupViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());

    group('Run Startup Logic -', () {
      test('Navigates to login if login flag is NOT set', () async {
        final service = getAndRegisterNavigationService();
        final model = StartUpViewModel();

        await model.initialise();
        verify(service.navigateTo(Routes.loginView));
      });

      test('Navigates to dashboard if login flag is true', () async {
        final service = getAndRegisterNavigationService();
        final model = StartUpViewModel(isLoggedIn: true);

        await model.initialise();
        verify(service.navigateTo(Routes.dashboardView));
      });
    });
  });
}

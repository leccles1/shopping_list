import 'package:shopping_app/app/app.router.dart';
import 'package:shopping_app/ui/startup/startup_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('StartupViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());

    group('Run Startup Logic -', () {
      test('Navigates to login if login flag is NOT set', () async {
        final navigationService = getAndRegisterNavigationService();
        final authService = getAndRegisterAuthenticationService();
        final model = StartUpViewModel();

        await model.initialise();
        verify(authService.authenticateUser());
        verify(navigationService.navigateTo(Routes.loginView));
      });

      test('Navigates to dashboard if login flag is true', () async {
        final navigationService = getAndRegisterNavigationService();
        final authService =
            getAndRegisterAuthenticationService(isLoggedIn: true);
        final model = StartUpViewModel();

        await model.initialise();
        verify(authService.authenticateUser());
        verify(navigationService.navigateTo(Routes.dashboardView));
      });
    });
  });
}

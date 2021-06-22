import 'package:shopping_app/app/app.locator.dart';
import 'package:shopping_app/app/app.logger.dart';
import 'package:shopping_app/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:shopping_app/app/app.router.dart';

class StartUpViewModel extends BaseViewModel {
  final log = getLogger('StartupViewModel');

  StartUpViewModel() : super();

  final AuthenticationService _authService = locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future initialise() async {
    log.v('Initialising application');
    bool isLoggedIn = await _authService.authenticateUser();

    if (isLoggedIn) {
      _navigationService.navigateTo(Routes.dashboardView);
    } else {
      _navigationService.navigateTo(Routes.loginView);
    }
  }
}

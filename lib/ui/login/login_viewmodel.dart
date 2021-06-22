import 'package:shopping_app/app/app.locator.dart';
import 'package:shopping_app/app/app.logger.dart';
import 'package:shopping_app/app/app.router.dart';
import 'package:shopping_app/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final log = getLogger('LoginViewModel');

  final AuthenticationService _authService = locator<AuthenticationService>();
  final NavigationService _navService = locator<NavigationService>();

  Future<dynamic> signUserIn() async {
    bool isLoggedIn = await _authService.authenticateUser();
    if (isLoggedIn) {
      _navService.navigateTo(Routes.dashboardView);
    } else {
      log.wtf('Error logging user in');
    }
    log.v('Signing user in');
  }

  Future<void> navigateToRegistration() async {
    log.v('Navigating to register user view');
    // _navigationService.navigateTo(Routes.registerView);
  }
}

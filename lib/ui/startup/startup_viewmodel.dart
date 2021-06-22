import 'package:flutter_starter_stacked/app/app.locator.dart';
import 'package:flutter_starter_stacked/app/app.logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.router.dart';

class StartUpViewModel extends BaseViewModel {
  final log = getLogger('StartupViewModel');

  StartUpViewModel({this.isLoggedIn = false}) : super();
  bool isLoggedIn;

  final NavigationService _navigationService = locator<NavigationService>();

  Future initialise() async {
    log.v('Initialising application');
    if (isLoggedIn) {
      _navigationService.navigateTo(Routes.dashboardView);
    } else {
      _navigationService.navigateTo(Routes.loginView);
    }
  }
}

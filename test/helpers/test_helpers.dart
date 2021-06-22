import 'package:mockito/mockito.dart';
import 'package:shopping_app/app/app.locator.dart';
import 'package:mockito/annotations.dart';
import 'package:shopping_app/app/app.logger.dart';
import 'package:shopping_app/services/authentication_service.dart';
import 'package:stacked_services/stacked_services.dart';

import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<NavigationService>(returnNullOnMissingStub: true),
  MockSpec<AuthenticationService>(returnNullOnMissingStub: true)
])
AuthenticationService getAndRegisterAuthenticationService(
    {bool isLoggedIn = false}) {
  _removeRegistrationIfExists<AuthenticationService>();
  final service = MockAuthenticationService();
  locator.registerSingleton<AuthenticationService>(service);
  final log = getLogger("AUTH TEST");

  when(service.authenticateUser()).thenAnswer((_) {
    log.wtf('Returning $isLoggedIn');
    return Future.value(isLoggedIn);
  });

  return service;
}

NavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

void registerServices() {
  getAndRegisterNavigationService();
  getAndRegisterAuthenticationService();
}

void unregisterServices() {
  locator.unregister<NavigationService>();
  locator.unregister<AuthenticationService>();
}

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}

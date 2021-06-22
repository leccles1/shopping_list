class AuthenticationService {
  bool _isLoggedIn = true;
  bool get isLoggedIn => _isLoggedIn;

  Future<bool> authenticateUser() async {
    return isLoggedIn;
  }

  Future<dynamic> signUserIn() async {}

  Future<dynamic> registerNewUser() async {}
}

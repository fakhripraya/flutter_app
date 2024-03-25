abstract class AuthRepsitory {
  Future<bool> doLogin();
  Future<bool> doLogout();
  Future<UserModel?> getProfile();
}

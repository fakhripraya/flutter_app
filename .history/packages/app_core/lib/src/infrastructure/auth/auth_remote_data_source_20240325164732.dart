abstract class AuthRemoteDataSource {
  Future<bool> doLogin();
  Future<bool> doLogout();
  Future<UserModel?> getProfile();
}

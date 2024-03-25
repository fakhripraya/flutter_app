import 'package:app_core/src/domain/auth/user_model.dart';

abstract class AuthRepository {
  Future<bool> doLogin();
  Future<bool> doLogout();
  Future<UserModel?> getProfile();
}

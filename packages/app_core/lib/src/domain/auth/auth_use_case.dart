import 'package:app_core/src/domain/auth/user_model.dart';

abstract class AuthUseCase {
  Future<bool> doLogin();
  Future<bool> doLogout();
  Future<UserModel?> getProfile();
}

import 'package:app_core/src/domain/auth/register_model.dart';
import 'package:app_core/src/domain/auth/user_model.dart';

abstract class AuthUseCase {
  Future<bool> doLoginOrRegister(RegisterModel login);

  Future<bool> doLoginOrRegisterWithGoogle();

  Future<bool> doLogout();

  Future<UserModel?> getProfile();
}

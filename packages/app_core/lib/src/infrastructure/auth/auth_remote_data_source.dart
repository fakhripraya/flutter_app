import 'package:app_core/src/domain/auth/register_model.dart';
import 'package:app_core/src/domain/auth/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<bool> doRegister(RegisterModel register);

  Future<bool> doLogin(RegisterModel login);

  Future<bool> doLoginWithGoogle();

  Future<bool> doLogout();

  Future<UserModel?> getProfile();
}

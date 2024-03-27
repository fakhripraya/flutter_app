import 'package:app_core/src/domain/auth/auth_repository.dart';
import 'package:app_core/src/domain/auth/auth_use_case.dart';
import 'package:app_core/src/domain/auth/register_model.dart';
import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthUseCase)
class AuthInteractor implements AuthUseCase {
  final AuthRepository _repository;

  AuthInteractor(this._repository);

  @override
  Future<bool> doLogin(RegisterModel login) {
    return _repository.doLogin(login);
  }

  @override
  Future<bool> doLoginWithGoogle() {
    return _repository.doLoginWithGoogle();
  }

  @override
  Future<bool> doLogout() {
    return _repository.doLogout();
  }

  @override
  Future<bool> doRegister(RegisterModel register) {
    return _repository.doRegister(register);
  }

  @override
  Future<UserModel?> getProfile() {
    return _repository.getProfile();
  }
}

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
  Future<bool> doLoginOrRegister(RegisterModel userRegisterModel) async {
    final isRegistered = await _repository.doRegister(userRegisterModel);
    if (isRegistered) return _repository.doLogin(userRegisterModel);
    return isRegistered;
  }

  @override
  Future<bool> doLoginOrRegisterWithGoogle() {
    return _repository.doLoginWithGoogle();
  }

  @override
  Future<bool> doLogout() {
    return _repository.doLogout();
  }

  @override
  Future<UserModel?> getProfile() {
    return _repository.getProfile();
  }
}

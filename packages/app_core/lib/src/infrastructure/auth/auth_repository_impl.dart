import 'package:app_core/src/domain/auth/auth_repository.dart';
import 'package:app_core/src/domain/auth/register_model.dart';
import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/infrastructure/auth/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remote;

  AuthRepositoryImpl(this._remote);

  @override
  Future<bool> doRegister(RegisterModel register) {
    return _remote.doRegister(register);
  }

  @override
  Future<bool> doLogin(RegisterModel login) {
    return _remote.doLogin(login);
  }

  @override
  Future<bool> doLoginWithGoogle() {
    return _remote.doLoginWithGoogle();
  }

  @override
  Future<bool> doLogout() {
    return _remote.doLogout();
  }

  @override
  Future<UserModel?> getProfile() {
    return _remote.getProfile();
  }
}

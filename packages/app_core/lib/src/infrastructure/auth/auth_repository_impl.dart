import 'package:app_core/src/domain/auth/auth_repository.dart';
import 'package:app_core/src/domain/auth/register_model.dart';
import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/infrastructure/auth/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remote;

  AuthRepositoryImpl(this._remote);

  @override
  Future<bool> doRegister(RegisterModel register) {
    // TODO: implement doLogin
    throw UnimplementedError();
  }

  @override
  Future<bool> doLogin(RegisterModel login) {
    // TODO: implement doLogin
    throw UnimplementedError();
  }

  @override
  Future<bool> doLoginWithGoogle() {
    // TODO: implement doLogin
    throw UnimplementedError();
  }

  @override
  Future<bool> doLogout() {
    // TODO: implement doLogout
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }
}

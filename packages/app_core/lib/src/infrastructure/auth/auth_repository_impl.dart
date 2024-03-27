import 'package:app_core/src/domain/auth/auth_repository.dart';
import 'package:app_core/src/domain/auth/register_model.dart';
import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/infrastructure/auth/auth_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remote;

  AuthRepositoryImpl(this._remote);

  @override
  Future<bool> doRegister(RegisterModel register) async {
    return await _remote.doRegister(register);
  }

  @override
  Future<bool> doLogin(RegisterModel login) => _remote.doLogin(login);

  @override
  Future<bool> doLoginWithGoogle() => _remote.doLoginWithGoogle();

  @override
  Future<bool> doLogout() => _remote.doLogout();

  @override
  Future<UserModel?> getProfile() => _remote.getProfile();
}

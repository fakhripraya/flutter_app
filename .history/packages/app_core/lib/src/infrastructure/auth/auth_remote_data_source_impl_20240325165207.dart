import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/infrastructure/auth/auth_remote_data_source.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<bool> doLogin() {
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

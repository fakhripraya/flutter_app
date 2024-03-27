// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_core/src/domain/auth/auth_interactor.dart' as _i8;
import 'package:app_core/src/domain/auth/auth_repository.dart' as _i5;
import 'package:app_core/src/domain/auth/auth_use_case.dart' as _i7;
import 'package:app_core/src/infrastructure/auth/auth_remote_data_source.dart'
    as _i3;
import 'package:app_core/src/infrastructure/auth/auth_remote_data_source_impl.dart'
    as _i4;
import 'package:app_core/src/infrastructure/auth/auth_repository_impl.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AuthRemoteDataSource>(
        () => _i4.AuthRemoteDataSourceImpl());
    gh.lazySingleton<_i5.AuthRepository>(
        () => _i6.AuthRepositoryImpl(gh<_i3.AuthRemoteDataSource>()));
    gh.lazySingleton<_i7.AuthUseCase>(
        () => _i8.AuthInteractor(gh<_i5.AuthRepository>()));
    return this;
  }
}

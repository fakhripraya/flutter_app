// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_core/app_core.dart' as _i6;
import 'package:capp_case/src/core/services/navigation_service.dart' as _i3;
import 'package:capp_case/src/presentation/screens/home/bloc/home_bloc.dart'
    as _i4;
import 'package:capp_case/src/presentation/screens/login/bloc/login_bloc.dart'
    as _i7;
import 'package:capp_case/src/presentation/screens/splash/bloc/splash_bloc.dart'
    as _i5;
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
    gh.lazySingleton<_i3.NavigationService>(() => _i3.NavigationService());
    gh.lazySingleton<_i4.HomeBloc>(
        () => _i4.HomeBloc(gh<_i3.NavigationService>()));
    gh.lazySingleton<_i5.SplashBloc>(() => _i5.SplashBloc(
          gh<_i3.NavigationService>(),
          gh<_i6.AuthUseCase>(),
        ));
    gh.lazySingleton<_i7.LoginBloc>(() => _i7.LoginBloc(
          gh<_i3.NavigationService>(),
          gh<_i6.AuthUseCase>(),
        ));
    return this;
  }
}

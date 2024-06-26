// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_core/app_core.dart' as _i5;
import 'package:capp_case/src/core/services/navigation_service.dart' as _i3;
import 'package:capp_case/src/presentation/screens/home/bloc/home_bloc.dart'
    as _i6;
import 'package:capp_case/src/presentation/screens/login/bloc/login_bloc.dart'
    as _i9;
import 'package:capp_case/src/presentation/screens/logout/bloc/profile_bloc.dart'
    as _i8;
import 'package:capp_case/src/presentation/screens/splash/bloc/splash_bloc.dart'
    as _i7;
import 'package:capp_case/src/presentation/screens/transaction/bloc/transaction_bloc.dart'
    as _i4;
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
    gh.lazySingleton<_i4.TransactionBloc>(() => _i4.TransactionBloc(
          gh<_i3.NavigationService>(),
          gh<_i5.TransactionUseCase>(),
          gh<_i5.AuthUseCase>(),
        ));
    gh.lazySingleton<_i6.HomeBloc>(() => _i6.HomeBloc(
          gh<_i5.TransactionUseCase>(),
          gh<_i5.AuthUseCase>(),
        ));
    gh.lazySingleton<_i7.SplashBloc>(() => _i7.SplashBloc(
          gh<_i3.NavigationService>(),
          gh<_i5.AuthUseCase>(),
        ));
    gh.lazySingleton<_i8.ProfileBloc>(() => _i8.ProfileBloc(
          gh<_i3.NavigationService>(),
          gh<_i5.AuthUseCase>(),
        ));
    gh.lazySingleton<_i9.LoginBloc>(() => _i9.LoginBloc(
          gh<_i3.NavigationService>(),
          gh<_i5.AuthUseCase>(),
        ));
    return this;
  }
}

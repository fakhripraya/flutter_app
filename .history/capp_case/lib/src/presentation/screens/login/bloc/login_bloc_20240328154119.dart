import 'package:app_core/app_core.dart';
import 'package:capp_case/src/core/constants/routes.dart';
import 'package:capp_case/src/core/services/navigation_service.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_event.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final NavigationService _navigation;
  final AuthUseCase _authUseCase;

  LoginBloc(
    this._navigation,
    this._authUseCase,
  ) : super(const LoginState()) {
    on<LoginInitial>(_initial);
    on<LoginStarted>(_started);
    on<LoginDoLoginOrRegister>(_doLoginOrRegister);
    on<LoginDoLoginOrRegisterWithGoogle>(_doLoginOrRegisterWithGoogle);
    on<LoginDoLogout>(_doLogout);
  }

  void _initial(
    LoginInitial e,
    Emitter<LoginState> emit,
  ) async =>
      emit(const LoginState());

  void _started(
    LoginStarted e,
    Emitter<LoginState> emit,
  ) async {}

  void _doLoginOrRegister(
    LoginDoLoginOrRegister e,
    Emitter<LoginState> emit,
  ) async {
    var result = await _authUseCase.doLoginOrRegister(e.user);
    if (result) {
      _navigation.pushRemoveUntil(Routes.home);
    }
  }

  void _doLoginOrRegisterWithGoogle(
    LoginDoLoginOrRegisterWithGoogle e,
    Emitter<LoginState> emit,
  ) async {
    await _authUseCase.doLoginOrRegisterWithGoogle();
  }

  void _doLogout(
    LoginDoLogout e,
    Emitter<LoginState> emit,
  ) async {}
}

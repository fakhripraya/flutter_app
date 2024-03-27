import 'package:capp_case/src/core/constants/routes.dart';
import 'package:capp_case/src/core/services/navigation_service.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_event.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final NavigationService _navigation;

  LoginBloc(this._navigation) : super(const LoginState()) {
    on<LoginInitial>(_initial);
    on<LoginStarted>(_started);
    on<DoLoginOrRegister>(_doLoginOrRegister);
    on<DoLoginOrRegisterWithGoogle>(_doLoginOrRegisterWithGoogle);
    on<DoLogout>(_doLogout);
  }

  void _initial(LoginInitial e, Emitter<LoginState> emit) async {}

  void _started(LoginStarted e, Emitter<LoginState> emit) async {}

  void _doLoginOrRegister(
      DoLoginOrRegister e, Emitter<LoginState> emit) async {}

  void _doLoginOrRegisterWithGoogle(
      DoLoginOrRegisterWithGoogle e, Emitter<LoginState> emit) async {}

  void _doLogout(DoLogout e, Emitter<LoginState> emit) async {}
}

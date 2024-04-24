import 'package:app_core/app_core.dart';
import 'package:capp_case/src/core/constants/constants.dart';
import 'package:capp_case/src/core/constants/routes.dart';
import 'package:capp_case/src/core/services/navigation_service.dart';
import 'package:capp_case/src/presentation/screens/logout/bloc/profile_event.dart';
import 'package:capp_case/src/presentation/screens/logout/bloc/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final NavigationService _navigation;
  final AuthUseCase _authUseCase;

  ProfileBloc(
    this._navigation,
    this._authUseCase,
  ) : super(const ProfileState()) {
    on<ProfileInitial>(_initial);
    on<ProfileStarted>(_started);
    on<ProfileDoLogout>(_doLogout);
  }

  void _initial(
    ProfileInitial e,
    Emitter<ProfileState> emit,
  ) async =>
      emit(const ProfileState());

  void _started(
    ProfileStarted e,
    Emitter<ProfileState> emit,
  ) async {}

  void _doLogout(
    ProfileDoLogout e,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    var isLogout = await _authUseCase.doLogout();
    emit(state.copyWith(isLoading: false));
    if (isLogout) {
      _navigation.pushRemoveUntil(Routes.login);
    } else {
      emit(
        state.copyWith(
          errorMessage: LoginConstants.errorMessage,
        ),
      );
    }
  }
}

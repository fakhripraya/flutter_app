import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.initial() = LoginInitial;

  const factory LoginEvent.started() = LoginStarted;

  const factory LoginEvent.doLoginOrRegister(RegisterModel user) =
      LoginDoLoginOrRegister;

  const factory LoginEvent.doLoginOrRegisterWithGoogle() =
      LoginDoLoginOrRegisterWithGoogle;

  const factory LoginEvent.doLogout() = LoginDoLogout;
}

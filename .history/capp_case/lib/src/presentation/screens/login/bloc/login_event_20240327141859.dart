import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.initial() = LoginInitial;
  const factory LoginEvent.started() = LoginStarted;
  const factory LoginEvent.doLoginOrRegister(UserModel user) =
      DoLoginOrRegister;
  const factory LoginEvent.doLoginOrRegisterWithGoogle() =
      DoLoginOrRegisterWithGoogle;
  const factory LoginEvent.doLoginOrRegisterWithGoogle() =
      DoLoginOrRegisterWithGoogle;
}

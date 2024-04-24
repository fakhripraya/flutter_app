import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initial() = ProfileInitial;

  const factory ProfileEvent.started() = ProfileStarted;

  const factory ProfileEvent.doLogout() = ProfileDoLogout;
}

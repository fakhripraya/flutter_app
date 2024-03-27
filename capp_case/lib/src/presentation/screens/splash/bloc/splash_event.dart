import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.freezed.dart';

@freezed
abstract class SplashEvent with _$SplashEvent {
  const factory SplashEvent.initial() = SplashInitial;

  const factory SplashEvent.started() = SplashStarted;
}

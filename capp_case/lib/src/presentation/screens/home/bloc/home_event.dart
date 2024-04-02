import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initial() = HomeInitial;
  const factory HomeEvent.started() = HomeStarted;
  const factory HomeEvent.doGetAllReports() = DoGetAllReports;
}

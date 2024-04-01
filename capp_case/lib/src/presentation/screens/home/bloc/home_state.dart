import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(true) bool isReportLoading,
    @Default(null) dynamic reports,
  }) = _HomeState;
}

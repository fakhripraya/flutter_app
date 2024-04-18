import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(true) bool isReportLoading,
    @Default([]) List<ReportModel> reports,
    @Default('') String reportTitle,
    @Default(UserModel()) UserModel user,
    @Default(false) bool isReportCreateLoading,
  }) = _HomeState;
}

import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_state.freezed.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default('') String expanseTitle,
    @Default(0) int expanseAmount,
    @Default(ReportModel()) ReportModel report,
  }) = _TransactionState;
}

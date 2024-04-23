import 'package:app_core/app_core.dart';
import 'package:capp_case/src/core/constants/type_transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_state.freezed.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default('') String title,
    @Default(0) int amount,
    @Default('') String createdAt,
    @Default(ReportModel()) ReportModel report,
    @Default(TypeTransaction.expense) String type,
    @Default([]) List<TransactionModel> expenses,
    @Default([]) List<TransactionModel> incomes,
  }) = _TransactionState;
}

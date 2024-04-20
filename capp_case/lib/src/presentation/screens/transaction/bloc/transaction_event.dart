import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_event.freezed.dart';

@freezed
abstract class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.initial() = TransactionInitial;

  const factory TransactionEvent.started() = TransactionStarted;

  const factory TransactionEvent.setReport({
    required final ReportModel report,
  }) = TransactionSetReport;
}

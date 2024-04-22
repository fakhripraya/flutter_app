import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_event.freezed.dart';

@Freezed(
  unionValueCase: FreezedUnionCase.none,
  when: FreezedWhenOptions.none,
  map: FreezedMapOptions.none,
  copyWith: false,
  toJson: false,
  fromJson: false,
  equal: false,
  toStringOverride: false,
)
abstract class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.initial() = TransactionInitial;

  const factory TransactionEvent.started() = TransactionStarted;

  const factory TransactionEvent.setReport({
    required final ReportModel report,
  }) = TransactionSetReport;

  const factory TransactionEvent.setTitle({
    required final String title,
  }) = TransactionSetTitle;

  const factory TransactionEvent.setDate({
    required final String date,
  }) = TransactionSetDate;

  const factory TransactionEvent.setAmount({
    required final String amount,
  }) = TransactionSetAmount;

  const factory TransactionEvent.setType({
    required final String type,
  }) = TransactionSetType;

  const factory TransactionEvent.create({
    required void Function() callback,
  }) = TransactionCreate;
}

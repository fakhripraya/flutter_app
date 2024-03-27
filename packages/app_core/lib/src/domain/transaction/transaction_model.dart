import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';

part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String amount,
    @Default('') String createAt,
    @Default('') String typeId,
    @Default('') String userId,
    @Default('') String reportId,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionModelImpl _$$TransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionModelImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      amount: json['amount'] as int? ?? 0,
      createAt: json['createAt'] as String? ?? '',
      type: json['type'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      reportId: json['reportId'] as String? ?? '',
    );

Map<String, dynamic> _$$TransactionModelImplToJson(
        _$TransactionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'amount': instance.amount,
      'createAt': instance.createAt,
      'type': instance.type,
      'userId': instance.userId,
      'reportId': instance.reportId,
    };

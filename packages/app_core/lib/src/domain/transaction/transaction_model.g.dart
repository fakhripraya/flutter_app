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
      description: json['description'] as String? ?? '',
      amount: json['amount'] as String? ?? '',
      createAt: json['createAt'] as String? ?? '',
      typeId: json['typeId'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      reportId: json['reportId'] as String? ?? '',
    );

Map<String, dynamic> _$$TransactionModelImplToJson(
        _$TransactionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'amount': instance.amount,
      'createAt': instance.createAt,
      'typeId': instance.typeId,
      'userId': instance.userId,
      'reportId': instance.reportId,
    };

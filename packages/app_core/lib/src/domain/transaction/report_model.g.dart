// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportModelImpl _$$ReportModelImplFromJson(Map<String, dynamic> json) =>
    _$ReportModelImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
    );

Map<String, dynamic> _$$ReportModelImplToJson(_$ReportModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'userId': instance.userId,
    };

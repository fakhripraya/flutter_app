// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionEvent {}

/// @nodoc

class _$TransactionInitialImpl implements TransactionInitial {
  const _$TransactionInitialImpl();
}

abstract class TransactionInitial implements TransactionEvent {
  const factory TransactionInitial() = _$TransactionInitialImpl;
}

/// @nodoc

class _$TransactionStartedImpl implements TransactionStarted {
  const _$TransactionStartedImpl();
}

abstract class TransactionStarted implements TransactionEvent {
  const factory TransactionStarted() = _$TransactionStartedImpl;
}

/// @nodoc

class _$TransactionSetReportImpl implements TransactionSetReport {
  const _$TransactionSetReportImpl({required this.report});

  @override
  final ReportModel report;
}

abstract class TransactionSetReport implements TransactionEvent {
  const factory TransactionSetReport({required final ReportModel report}) =
      _$TransactionSetReportImpl;

  ReportModel get report;
}

/// @nodoc

class _$TransactionSetTitleImpl implements TransactionSetTitle {
  const _$TransactionSetTitleImpl({required this.title});

  @override
  final String title;
}

abstract class TransactionSetTitle implements TransactionEvent {
  const factory TransactionSetTitle({required final String title}) =
      _$TransactionSetTitleImpl;

  String get title;
}

/// @nodoc

class _$TransactionSetDateImpl implements TransactionSetDate {
  const _$TransactionSetDateImpl({required this.date});

  @override
  final String date;
}

abstract class TransactionSetDate implements TransactionEvent {
  const factory TransactionSetDate({required final String date}) =
      _$TransactionSetDateImpl;

  String get date;
}

/// @nodoc

class _$TransactionSetAmountImpl implements TransactionSetAmount {
  const _$TransactionSetAmountImpl({required this.amount});

  @override
  final String amount;
}

abstract class TransactionSetAmount implements TransactionEvent {
  const factory TransactionSetAmount({required final String amount}) =
      _$TransactionSetAmountImpl;

  String get amount;
}

/// @nodoc

class _$TransactionSetTypeImpl implements TransactionSetType {
  const _$TransactionSetTypeImpl({required this.type});

  @override
  final String type;
}

abstract class TransactionSetType implements TransactionEvent {
  const factory TransactionSetType({required final String type}) =
      _$TransactionSetTypeImpl;

  String get type;
}

/// @nodoc

class _$TransactionCreateImpl implements TransactionCreate {
  const _$TransactionCreateImpl({required this.callback});

  @override
  final void Function() callback;
}

abstract class TransactionCreate implements TransactionEvent {
  const factory TransactionCreate({required final void Function() callback}) =
      _$TransactionCreateImpl;

  void Function() get callback;
}

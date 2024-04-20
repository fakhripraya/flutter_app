// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionState {
  String get expanseTitle => throw _privateConstructorUsedError;
  int get expanseAmount => throw _privateConstructorUsedError;
  ReportModel get report => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
  @useResult
  $Res call({String expanseTitle, int expanseAmount, ReportModel report});

  $ReportModelCopyWith<$Res> get report;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expanseTitle = null,
    Object? expanseAmount = null,
    Object? report = null,
  }) {
    return _then(_value.copyWith(
      expanseTitle: null == expanseTitle
          ? _value.expanseTitle
          : expanseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      expanseAmount: null == expanseAmount
          ? _value.expanseAmount
          : expanseAmount // ignore: cast_nullable_to_non_nullable
              as int,
      report: null == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ReportModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReportModelCopyWith<$Res> get report {
    return $ReportModelCopyWith<$Res>(_value.report, (value) {
      return _then(_value.copyWith(report: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionStateImplCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$TransactionStateImplCopyWith(_$TransactionStateImpl value,
          $Res Function(_$TransactionStateImpl) then) =
      __$$TransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String expanseTitle, int expanseAmount, ReportModel report});

  @override
  $ReportModelCopyWith<$Res> get report;
}

/// @nodoc
class __$$TransactionStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionStateImpl>
    implements _$$TransactionStateImplCopyWith<$Res> {
  __$$TransactionStateImplCopyWithImpl(_$TransactionStateImpl _value,
      $Res Function(_$TransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expanseTitle = null,
    Object? expanseAmount = null,
    Object? report = null,
  }) {
    return _then(_$TransactionStateImpl(
      expanseTitle: null == expanseTitle
          ? _value.expanseTitle
          : expanseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      expanseAmount: null == expanseAmount
          ? _value.expanseAmount
          : expanseAmount // ignore: cast_nullable_to_non_nullable
              as int,
      report: null == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ReportModel,
    ));
  }
}

/// @nodoc

class _$TransactionStateImpl implements _TransactionState {
  const _$TransactionStateImpl(
      {this.expanseTitle = '',
      this.expanseAmount = 0,
      this.report = const ReportModel()});

  @override
  @JsonKey()
  final String expanseTitle;
  @override
  @JsonKey()
  final int expanseAmount;
  @override
  @JsonKey()
  final ReportModel report;

  @override
  String toString() {
    return 'TransactionState(expanseTitle: $expanseTitle, expanseAmount: $expanseAmount, report: $report)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStateImpl &&
            (identical(other.expanseTitle, expanseTitle) ||
                other.expanseTitle == expanseTitle) &&
            (identical(other.expanseAmount, expanseAmount) ||
                other.expanseAmount == expanseAmount) &&
            (identical(other.report, report) || other.report == report));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, expanseTitle, expanseAmount, report);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      __$$TransactionStateImplCopyWithImpl<_$TransactionStateImpl>(
          this, _$identity);
}

abstract class _TransactionState implements TransactionState {
  const factory _TransactionState(
      {final String expanseTitle,
      final int expanseAmount,
      final ReportModel report}) = _$TransactionStateImpl;

  @override
  String get expanseTitle;
  @override
  int get expanseAmount;
  @override
  ReportModel get report;
  @override
  @JsonKey(ignore: true)
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

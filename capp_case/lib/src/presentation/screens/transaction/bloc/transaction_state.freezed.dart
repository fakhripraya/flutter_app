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
  String get title => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  ReportModel get report => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<TransactionModel> get expenses => throw _privateConstructorUsedError;
  List<TransactionModel> get incomes => throw _privateConstructorUsedError;

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
  $Res call(
      {String title,
      int amount,
      String createdAt,
      ReportModel report,
      String type,
      List<TransactionModel> expenses,
      List<TransactionModel> incomes});

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
    Object? title = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? report = null,
    Object? type = null,
    Object? expenses = null,
    Object? incomes = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      report: null == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ReportModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      incomes: null == incomes
          ? _value.incomes
          : incomes // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
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
  $Res call(
      {String title,
      int amount,
      String createdAt,
      ReportModel report,
      String type,
      List<TransactionModel> expenses,
      List<TransactionModel> incomes});

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
    Object? title = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? report = null,
    Object? type = null,
    Object? expenses = null,
    Object? incomes = null,
  }) {
    return _then(_$TransactionStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      report: null == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ReportModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      expenses: null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      incomes: null == incomes
          ? _value._incomes
          : incomes // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ));
  }
}

/// @nodoc

class _$TransactionStateImpl implements _TransactionState {
  const _$TransactionStateImpl(
      {this.title = '',
      this.amount = 0,
      this.createdAt = '',
      this.report = const ReportModel(),
      this.type = TypeTransaction.expense,
      final List<TransactionModel> expenses = const [],
      final List<TransactionModel> incomes = const []})
      : _expenses = expenses,
        _incomes = incomes;

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final ReportModel report;
  @override
  @JsonKey()
  final String type;
  final List<TransactionModel> _expenses;
  @override
  @JsonKey()
  List<TransactionModel> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  final List<TransactionModel> _incomes;
  @override
  @JsonKey()
  List<TransactionModel> get incomes {
    if (_incomes is EqualUnmodifiableListView) return _incomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomes);
  }

  @override
  String toString() {
    return 'TransactionState(title: $title, amount: $amount, createdAt: $createdAt, report: $report, type: $type, expenses: $expenses, incomes: $incomes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.report, report) || other.report == report) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses) &&
            const DeepCollectionEquality().equals(other._incomes, _incomes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      amount,
      createdAt,
      report,
      type,
      const DeepCollectionEquality().hash(_expenses),
      const DeepCollectionEquality().hash(_incomes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      __$$TransactionStateImplCopyWithImpl<_$TransactionStateImpl>(
          this, _$identity);
}

abstract class _TransactionState implements TransactionState {
  const factory _TransactionState(
      {final String title,
      final int amount,
      final String createdAt,
      final ReportModel report,
      final String type,
      final List<TransactionModel> expenses,
      final List<TransactionModel> incomes}) = _$TransactionStateImpl;

  @override
  String get title;
  @override
  int get amount;
  @override
  String get createdAt;
  @override
  ReportModel get report;
  @override
  String get type;
  @override
  List<TransactionModel> get expenses;
  @override
  List<TransactionModel> get incomes;
  @override
  @JsonKey(ignore: true)
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

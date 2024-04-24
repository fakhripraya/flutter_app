// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  bool get isReportLoading => throw _privateConstructorUsedError;
  List<ReportModel> get reports => throw _privateConstructorUsedError;
  String get reportTitle => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  bool get isReportCreateLoading => throw _privateConstructorUsedError;
  List<TransactionModel> get expenses => throw _privateConstructorUsedError;
  List<TransactionModel> get incomes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isReportLoading,
      List<ReportModel> reports,
      String reportTitle,
      UserModel user,
      bool isReportCreateLoading,
      List<TransactionModel> expenses,
      List<TransactionModel> incomes});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReportLoading = null,
    Object? reports = null,
    Object? reportTitle = null,
    Object? user = null,
    Object? isReportCreateLoading = null,
    Object? expenses = null,
    Object? incomes = null,
  }) {
    return _then(_value.copyWith(
      isReportLoading: null == isReportLoading
          ? _value.isReportLoading
          : isReportLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reports: null == reports
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>,
      reportTitle: null == reportTitle
          ? _value.reportTitle
          : reportTitle // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isReportCreateLoading: null == isReportCreateLoading
          ? _value.isReportCreateLoading
          : isReportCreateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isReportLoading,
      List<ReportModel> reports,
      String reportTitle,
      UserModel user,
      bool isReportCreateLoading,
      List<TransactionModel> expenses,
      List<TransactionModel> incomes});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReportLoading = null,
    Object? reports = null,
    Object? reportTitle = null,
    Object? user = null,
    Object? isReportCreateLoading = null,
    Object? expenses = null,
    Object? incomes = null,
  }) {
    return _then(_$HomeStateImpl(
      isReportLoading: null == isReportLoading
          ? _value.isReportLoading
          : isReportLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reports: null == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>,
      reportTitle: null == reportTitle
          ? _value.reportTitle
          : reportTitle // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isReportCreateLoading: null == isReportCreateLoading
          ? _value.isReportCreateLoading
          : isReportCreateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.isReportLoading = true,
      final List<ReportModel> reports = const [],
      this.reportTitle = '',
      this.user = const UserModel(),
      this.isReportCreateLoading = false,
      final List<TransactionModel> expenses = const [],
      final List<TransactionModel> incomes = const []})
      : _reports = reports,
        _expenses = expenses,
        _incomes = incomes;

  @override
  @JsonKey()
  final bool isReportLoading;
  final List<ReportModel> _reports;
  @override
  @JsonKey()
  List<ReportModel> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  @JsonKey()
  final String reportTitle;
  @override
  @JsonKey()
  final UserModel user;
  @override
  @JsonKey()
  final bool isReportCreateLoading;
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
    return 'HomeState(isReportLoading: $isReportLoading, reports: $reports, reportTitle: $reportTitle, user: $user, isReportCreateLoading: $isReportCreateLoading, expenses: $expenses, incomes: $incomes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isReportLoading, isReportLoading) ||
                other.isReportLoading == isReportLoading) &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
            (identical(other.reportTitle, reportTitle) ||
                other.reportTitle == reportTitle) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isReportCreateLoading, isReportCreateLoading) ||
                other.isReportCreateLoading == isReportCreateLoading) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses) &&
            const DeepCollectionEquality().equals(other._incomes, _incomes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isReportLoading,
      const DeepCollectionEquality().hash(_reports),
      reportTitle,
      user,
      isReportCreateLoading,
      const DeepCollectionEquality().hash(_expenses),
      const DeepCollectionEquality().hash(_incomes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final bool isReportLoading,
      final List<ReportModel> reports,
      final String reportTitle,
      final UserModel user,
      final bool isReportCreateLoading,
      final List<TransactionModel> expenses,
      final List<TransactionModel> incomes}) = _$HomeStateImpl;

  @override
  bool get isReportLoading;
  @override
  List<ReportModel> get reports;
  @override
  String get reportTitle;
  @override
  UserModel get user;
  @override
  bool get isReportCreateLoading;
  @override
  List<TransactionModel> get expenses;
  @override
  List<TransactionModel> get incomes;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(ReportModel report) setReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function(ReportModel report)? setReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(ReportModel report)? setReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionStarted value) started,
    required TResult Function(TransactionSetReport value) setReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionStarted value)? started,
    TResult? Function(TransactionSetReport value)? setReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionStarted value)? started,
    TResult Function(TransactionSetReport value)? setReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TransactionInitialImplCopyWith<$Res> {
  factory _$$TransactionInitialImplCopyWith(_$TransactionInitialImpl value,
          $Res Function(_$TransactionInitialImpl) then) =
      __$$TransactionInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionInitialImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$TransactionInitialImpl>
    implements _$$TransactionInitialImplCopyWith<$Res> {
  __$$TransactionInitialImplCopyWithImpl(_$TransactionInitialImpl _value,
      $Res Function(_$TransactionInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionInitialImpl implements TransactionInitial {
  const _$TransactionInitialImpl();

  @override
  String toString() {
    return 'TransactionEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(ReportModel report) setReport,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function(ReportModel report)? setReport,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(ReportModel report)? setReport,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionStarted value) started,
    required TResult Function(TransactionSetReport value) setReport,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionStarted value)? started,
    TResult? Function(TransactionSetReport value)? setReport,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionStarted value)? started,
    TResult Function(TransactionSetReport value)? setReport,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TransactionInitial implements TransactionEvent {
  const factory TransactionInitial() = _$TransactionInitialImpl;
}

/// @nodoc
abstract class _$$TransactionStartedImplCopyWith<$Res> {
  factory _$$TransactionStartedImplCopyWith(_$TransactionStartedImpl value,
          $Res Function(_$TransactionStartedImpl) then) =
      __$$TransactionStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionStartedImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$TransactionStartedImpl>
    implements _$$TransactionStartedImplCopyWith<$Res> {
  __$$TransactionStartedImplCopyWithImpl(_$TransactionStartedImpl _value,
      $Res Function(_$TransactionStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionStartedImpl implements TransactionStarted {
  const _$TransactionStartedImpl();

  @override
  String toString() {
    return 'TransactionEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(ReportModel report) setReport,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function(ReportModel report)? setReport,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(ReportModel report)? setReport,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionStarted value) started,
    required TResult Function(TransactionSetReport value) setReport,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionStarted value)? started,
    TResult? Function(TransactionSetReport value)? setReport,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionStarted value)? started,
    TResult Function(TransactionSetReport value)? setReport,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class TransactionStarted implements TransactionEvent {
  const factory TransactionStarted() = _$TransactionStartedImpl;
}

/// @nodoc
abstract class _$$TransactionSetReportImplCopyWith<$Res> {
  factory _$$TransactionSetReportImplCopyWith(_$TransactionSetReportImpl value,
          $Res Function(_$TransactionSetReportImpl) then) =
      __$$TransactionSetReportImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReportModel report});

  $ReportModelCopyWith<$Res> get report;
}

/// @nodoc
class __$$TransactionSetReportImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$TransactionSetReportImpl>
    implements _$$TransactionSetReportImplCopyWith<$Res> {
  __$$TransactionSetReportImplCopyWithImpl(_$TransactionSetReportImpl _value,
      $Res Function(_$TransactionSetReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? report = null,
  }) {
    return _then(_$TransactionSetReportImpl(
      report: null == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ReportModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ReportModelCopyWith<$Res> get report {
    return $ReportModelCopyWith<$Res>(_value.report, (value) {
      return _then(_value.copyWith(report: value));
    });
  }
}

/// @nodoc

class _$TransactionSetReportImpl implements TransactionSetReport {
  const _$TransactionSetReportImpl({required this.report});

  @override
  final ReportModel report;

  @override
  String toString() {
    return 'TransactionEvent.setReport(report: $report)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionSetReportImpl &&
            (identical(other.report, report) || other.report == report));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionSetReportImplCopyWith<_$TransactionSetReportImpl>
      get copyWith =>
          __$$TransactionSetReportImplCopyWithImpl<_$TransactionSetReportImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(ReportModel report) setReport,
  }) {
    return setReport(report);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function(ReportModel report)? setReport,
  }) {
    return setReport?.call(report);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(ReportModel report)? setReport,
    required TResult orElse(),
  }) {
    if (setReport != null) {
      return setReport(report);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionStarted value) started,
    required TResult Function(TransactionSetReport value) setReport,
  }) {
    return setReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionStarted value)? started,
    TResult? Function(TransactionSetReport value)? setReport,
  }) {
    return setReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionStarted value)? started,
    TResult Function(TransactionSetReport value)? setReport,
    required TResult orElse(),
  }) {
    if (setReport != null) {
      return setReport(this);
    }
    return orElse();
  }
}

abstract class TransactionSetReport implements TransactionEvent {
  const factory TransactionSetReport({required final ReportModel report}) =
      _$TransactionSetReportImpl;

  ReportModel get report;
  @JsonKey(ignore: true)
  _$$TransactionSetReportImplCopyWith<_$TransactionSetReportImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function() doGetAllReports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function()? doGetAllReports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function()? doGetAllReports,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeStarted value) started,
    required TResult Function(DoGetAllReports value) doGetAllReports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeStarted value)? started,
    TResult? Function(DoGetAllReports value)? doGetAllReports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeStarted value)? started,
    TResult Function(DoGetAllReports value)? doGetAllReports,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeInitialImplCopyWith<$Res> {
  factory _$$HomeInitialImplCopyWith(
          _$HomeInitialImpl value, $Res Function(_$HomeInitialImpl) then) =
      __$$HomeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeInitialImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeInitialImpl>
    implements _$$HomeInitialImplCopyWith<$Res> {
  __$$HomeInitialImplCopyWithImpl(
      _$HomeInitialImpl _value, $Res Function(_$HomeInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeInitialImpl implements HomeInitial {
  const _$HomeInitialImpl();

  @override
  String toString() {
    return 'HomeEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function() doGetAllReports,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function()? doGetAllReports,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function()? doGetAllReports,
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
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeStarted value) started,
    required TResult Function(DoGetAllReports value) doGetAllReports,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeStarted value)? started,
    TResult? Function(DoGetAllReports value)? doGetAllReports,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeStarted value)? started,
    TResult Function(DoGetAllReports value)? doGetAllReports,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeInitial implements HomeEvent {
  const factory HomeInitial() = _$HomeInitialImpl;
}

/// @nodoc
abstract class _$$HomeStartedImplCopyWith<$Res> {
  factory _$$HomeStartedImplCopyWith(
          _$HomeStartedImpl value, $Res Function(_$HomeStartedImpl) then) =
      __$$HomeStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeStartedImpl>
    implements _$$HomeStartedImplCopyWith<$Res> {
  __$$HomeStartedImplCopyWithImpl(
      _$HomeStartedImpl _value, $Res Function(_$HomeStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeStartedImpl implements HomeStarted {
  const _$HomeStartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function() doGetAllReports,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function()? doGetAllReports,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function()? doGetAllReports,
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
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeStarted value) started,
    required TResult Function(DoGetAllReports value) doGetAllReports,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeStarted value)? started,
    TResult? Function(DoGetAllReports value)? doGetAllReports,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeStarted value)? started,
    TResult Function(DoGetAllReports value)? doGetAllReports,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class HomeStarted implements HomeEvent {
  const factory HomeStarted() = _$HomeStartedImpl;
}

/// @nodoc
abstract class _$$DoGetAllReportsImplCopyWith<$Res> {
  factory _$$DoGetAllReportsImplCopyWith(_$DoGetAllReportsImpl value,
          $Res Function(_$DoGetAllReportsImpl) then) =
      __$$DoGetAllReportsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoGetAllReportsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DoGetAllReportsImpl>
    implements _$$DoGetAllReportsImplCopyWith<$Res> {
  __$$DoGetAllReportsImplCopyWithImpl(
      _$DoGetAllReportsImpl _value, $Res Function(_$DoGetAllReportsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoGetAllReportsImpl implements DoGetAllReports {
  const _$DoGetAllReportsImpl();

  @override
  String toString() {
    return 'HomeEvent.doGetAllReports()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoGetAllReportsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function() doGetAllReports,
  }) {
    return doGetAllReports();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function()? doGetAllReports,
  }) {
    return doGetAllReports?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function()? doGetAllReports,
    required TResult orElse(),
  }) {
    if (doGetAllReports != null) {
      return doGetAllReports();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeStarted value) started,
    required TResult Function(DoGetAllReports value) doGetAllReports,
  }) {
    return doGetAllReports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeStarted value)? started,
    TResult? Function(DoGetAllReports value)? doGetAllReports,
  }) {
    return doGetAllReports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeStarted value)? started,
    TResult Function(DoGetAllReports value)? doGetAllReports,
    required TResult orElse(),
  }) {
    if (doGetAllReports != null) {
      return doGetAllReports(this);
    }
    return orElse();
  }
}

abstract class DoGetAllReports implements HomeEvent {
  const factory DoGetAllReports() = _$DoGetAllReportsImpl;
}

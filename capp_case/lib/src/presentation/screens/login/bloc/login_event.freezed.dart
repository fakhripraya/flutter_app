// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(UserModel user) doLoginOrRegister,
    required TResult Function() doLoginOrRegisterWithGoogle,
    required TResult Function() doLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function(UserModel user)? doLoginOrRegister,
    TResult? Function()? doLoginOrRegisterWithGoogle,
    TResult? Function()? doLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(UserModel user)? doLoginOrRegister,
    TResult Function()? doLoginOrRegisterWithGoogle,
    TResult Function()? doLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginStarted value) started,
    required TResult Function(DoLoginOrRegister value) doLoginOrRegister,
    required TResult Function(DoLoginOrRegisterWithGoogle value)
        doLoginOrRegisterWithGoogle,
    required TResult Function(DoLogout value) doLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginStarted value)? started,
    TResult? Function(DoLoginOrRegister value)? doLoginOrRegister,
    TResult? Function(DoLoginOrRegisterWithGoogle value)?
        doLoginOrRegisterWithGoogle,
    TResult? Function(DoLogout value)? doLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginStarted value)? started,
    TResult Function(DoLoginOrRegister value)? doLoginOrRegister,
    TResult Function(DoLoginOrRegisterWithGoogle value)?
        doLoginOrRegisterWithGoogle,
    TResult Function(DoLogout value)? doLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginInitialImplCopyWith<$Res> {
  factory _$$LoginInitialImplCopyWith(
          _$LoginInitialImpl value, $Res Function(_$LoginInitialImpl) then) =
      __$$LoginInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginInitialImpl>
    implements _$$LoginInitialImplCopyWith<$Res> {
  __$$LoginInitialImplCopyWithImpl(
      _$LoginInitialImpl _value, $Res Function(_$LoginInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginInitialImpl implements LoginInitial {
  const _$LoginInitialImpl();

  @override
  String toString() {
    return 'LoginEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(UserModel user) doLoginOrRegister,
    required TResult Function() doLoginOrRegisterWithGoogle,
    required TResult Function() doLogout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function(UserModel user)? doLoginOrRegister,
    TResult? Function()? doLoginOrRegisterWithGoogle,
    TResult? Function()? doLogout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(UserModel user)? doLoginOrRegister,
    TResult Function()? doLoginOrRegisterWithGoogle,
    TResult Function()? doLogout,
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginStarted value) started,
    required TResult Function(DoLoginOrRegister value) doLoginOrRegister,
    required TResult Function(DoLoginOrRegisterWithGoogle value)
        doLoginOrRegisterWithGoogle,
    required TResult Function(DoLogout value) doLogout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginStarted value)? started,
    TResult? Function(DoLoginOrRegister value)? doLoginOrRegister,
    TResult? Function(DoLoginOrRegisterWithGoogle value)?
        doLoginOrRegisterWithGoogle,
    TResult? Function(DoLogout value)? doLogout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginStarted value)? started,
    TResult Function(DoLoginOrRegister value)? doLoginOrRegister,
    TResult Function(DoLoginOrRegisterWithGoogle value)?
        doLoginOrRegisterWithGoogle,
    TResult Function(DoLogout value)? doLogout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginInitial implements LoginEvent {
  const factory LoginInitial() = _$LoginInitialImpl;
}

/// @nodoc
abstract class _$$LoginStartedImplCopyWith<$Res> {
  factory _$$LoginStartedImplCopyWith(
          _$LoginStartedImpl value, $Res Function(_$LoginStartedImpl) then) =
      __$$LoginStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStartedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginStartedImpl>
    implements _$$LoginStartedImplCopyWith<$Res> {
  __$$LoginStartedImplCopyWithImpl(
      _$LoginStartedImpl _value, $Res Function(_$LoginStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStartedImpl implements LoginStarted {
  const _$LoginStartedImpl();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(UserModel user) doLoginOrRegister,
    required TResult Function() doLoginOrRegisterWithGoogle,
    required TResult Function() doLogout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function(UserModel user)? doLoginOrRegister,
    TResult? Function()? doLoginOrRegisterWithGoogle,
    TResult? Function()? doLogout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(UserModel user)? doLoginOrRegister,
    TResult Function()? doLoginOrRegisterWithGoogle,
    TResult Function()? doLogout,
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginStarted value) started,
    required TResult Function(DoLoginOrRegister value) doLoginOrRegister,
    required TResult Function(DoLoginOrRegisterWithGoogle value)
        doLoginOrRegisterWithGoogle,
    required TResult Function(DoLogout value) doLogout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginStarted value)? started,
    TResult? Function(DoLoginOrRegister value)? doLoginOrRegister,
    TResult? Function(DoLoginOrRegisterWithGoogle value)?
        doLoginOrRegisterWithGoogle,
    TResult? Function(DoLogout value)? doLogout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginStarted value)? started,
    TResult Function(DoLoginOrRegister value)? doLoginOrRegister,
    TResult Function(DoLoginOrRegisterWithGoogle value)?
        doLoginOrRegisterWithGoogle,
    TResult Function(DoLogout value)? doLogout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class LoginStarted implements LoginEvent {
  const factory LoginStarted() = _$LoginStartedImpl;
}

/// @nodoc
abstract class _$$DoLoginOrRegisterImplCopyWith<$Res> {
  factory _$$DoLoginOrRegisterImplCopyWith(_$DoLoginOrRegisterImpl value,
          $Res Function(_$DoLoginOrRegisterImpl) then) =
      __$$DoLoginOrRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$DoLoginOrRegisterImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$DoLoginOrRegisterImpl>
    implements _$$DoLoginOrRegisterImplCopyWith<$Res> {
  __$$DoLoginOrRegisterImplCopyWithImpl(_$DoLoginOrRegisterImpl _value,
      $Res Function(_$DoLoginOrRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$DoLoginOrRegisterImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$DoLoginOrRegisterImpl implements DoLoginOrRegister {
  const _$DoLoginOrRegisterImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'LoginEvent.doLoginOrRegister(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoLoginOrRegisterImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoLoginOrRegisterImplCopyWith<_$DoLoginOrRegisterImpl> get copyWith =>
      __$$DoLoginOrRegisterImplCopyWithImpl<_$DoLoginOrRegisterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(UserModel user) doLoginOrRegister,
    required TResult Function() doLoginOrRegisterWithGoogle,
    required TResult Function() doLogout,
  }) {
    return doLoginOrRegister(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function(UserModel user)? doLoginOrRegister,
    TResult? Function()? doLoginOrRegisterWithGoogle,
    TResult? Function()? doLogout,
  }) {
    return doLoginOrRegister?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(UserModel user)? doLoginOrRegister,
    TResult Function()? doLoginOrRegisterWithGoogle,
    TResult Function()? doLogout,
    required TResult orElse(),
  }) {
    if (doLoginOrRegister != null) {
      return doLoginOrRegister(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginStarted value) started,
    required TResult Function(DoLoginOrRegister value) doLoginOrRegister,
    required TResult Function(DoLoginOrRegisterWithGoogle value)
        doLoginOrRegisterWithGoogle,
    required TResult Function(DoLogout value) doLogout,
  }) {
    return doLoginOrRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginStarted value)? started,
    TResult? Function(DoLoginOrRegister value)? doLoginOrRegister,
    TResult? Function(DoLoginOrRegisterWithGoogle value)?
        doLoginOrRegisterWithGoogle,
    TResult? Function(DoLogout value)? doLogout,
  }) {
    return doLoginOrRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginStarted value)? started,
    TResult Function(DoLoginOrRegister value)? doLoginOrRegister,
    TResult Function(DoLoginOrRegisterWithGoogle value)?
        doLoginOrRegisterWithGoogle,
    TResult Function(DoLogout value)? doLogout,
    required TResult orElse(),
  }) {
    if (doLoginOrRegister != null) {
      return doLoginOrRegister(this);
    }
    return orElse();
  }
}

abstract class DoLoginOrRegister implements LoginEvent {
  const factory DoLoginOrRegister(final UserModel user) =
      _$DoLoginOrRegisterImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$DoLoginOrRegisterImplCopyWith<_$DoLoginOrRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoLoginOrRegisterWithGoogleImplCopyWith<$Res> {
  factory _$$DoLoginOrRegisterWithGoogleImplCopyWith(
          _$DoLoginOrRegisterWithGoogleImpl value,
          $Res Function(_$DoLoginOrRegisterWithGoogleImpl) then) =
      __$$DoLoginOrRegisterWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoLoginOrRegisterWithGoogleImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$DoLoginOrRegisterWithGoogleImpl>
    implements _$$DoLoginOrRegisterWithGoogleImplCopyWith<$Res> {
  __$$DoLoginOrRegisterWithGoogleImplCopyWithImpl(
      _$DoLoginOrRegisterWithGoogleImpl _value,
      $Res Function(_$DoLoginOrRegisterWithGoogleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoLoginOrRegisterWithGoogleImpl implements DoLoginOrRegisterWithGoogle {
  const _$DoLoginOrRegisterWithGoogleImpl();

  @override
  String toString() {
    return 'LoginEvent.doLoginOrRegisterWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoLoginOrRegisterWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(UserModel user) doLoginOrRegister,
    required TResult Function() doLoginOrRegisterWithGoogle,
    required TResult Function() doLogout,
  }) {
    return doLoginOrRegisterWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function(UserModel user)? doLoginOrRegister,
    TResult? Function()? doLoginOrRegisterWithGoogle,
    TResult? Function()? doLogout,
  }) {
    return doLoginOrRegisterWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(UserModel user)? doLoginOrRegister,
    TResult Function()? doLoginOrRegisterWithGoogle,
    TResult Function()? doLogout,
    required TResult orElse(),
  }) {
    if (doLoginOrRegisterWithGoogle != null) {
      return doLoginOrRegisterWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginStarted value) started,
    required TResult Function(DoLoginOrRegister value) doLoginOrRegister,
    required TResult Function(DoLoginOrRegisterWithGoogle value)
        doLoginOrRegisterWithGoogle,
    required TResult Function(DoLogout value) doLogout,
  }) {
    return doLoginOrRegisterWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginStarted value)? started,
    TResult? Function(DoLoginOrRegister value)? doLoginOrRegister,
    TResult? Function(DoLoginOrRegisterWithGoogle value)?
        doLoginOrRegisterWithGoogle,
    TResult? Function(DoLogout value)? doLogout,
  }) {
    return doLoginOrRegisterWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginStarted value)? started,
    TResult Function(DoLoginOrRegister value)? doLoginOrRegister,
    TResult Function(DoLoginOrRegisterWithGoogle value)?
        doLoginOrRegisterWithGoogle,
    TResult Function(DoLogout value)? doLogout,
    required TResult orElse(),
  }) {
    if (doLoginOrRegisterWithGoogle != null) {
      return doLoginOrRegisterWithGoogle(this);
    }
    return orElse();
  }
}

abstract class DoLoginOrRegisterWithGoogle implements LoginEvent {
  const factory DoLoginOrRegisterWithGoogle() =
      _$DoLoginOrRegisterWithGoogleImpl;
}

/// @nodoc
abstract class _$$DoLogoutImplCopyWith<$Res> {
  factory _$$DoLogoutImplCopyWith(
          _$DoLogoutImpl value, $Res Function(_$DoLogoutImpl) then) =
      __$$DoLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoLogoutImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$DoLogoutImpl>
    implements _$$DoLogoutImplCopyWith<$Res> {
  __$$DoLogoutImplCopyWithImpl(
      _$DoLogoutImpl _value, $Res Function(_$DoLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoLogoutImpl implements DoLogout {
  const _$DoLogoutImpl();

  @override
  String toString() {
    return 'LoginEvent.doLogout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(UserModel user) doLoginOrRegister,
    required TResult Function() doLoginOrRegisterWithGoogle,
    required TResult Function() doLogout,
  }) {
    return doLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function(UserModel user)? doLoginOrRegister,
    TResult? Function()? doLoginOrRegisterWithGoogle,
    TResult? Function()? doLogout,
  }) {
    return doLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(UserModel user)? doLoginOrRegister,
    TResult Function()? doLoginOrRegisterWithGoogle,
    TResult Function()? doLogout,
    required TResult orElse(),
  }) {
    if (doLogout != null) {
      return doLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginStarted value) started,
    required TResult Function(DoLoginOrRegister value) doLoginOrRegister,
    required TResult Function(DoLoginOrRegisterWithGoogle value)
        doLoginOrRegisterWithGoogle,
    required TResult Function(DoLogout value) doLogout,
  }) {
    return doLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginStarted value)? started,
    TResult? Function(DoLoginOrRegister value)? doLoginOrRegister,
    TResult? Function(DoLoginOrRegisterWithGoogle value)?
        doLoginOrRegisterWithGoogle,
    TResult? Function(DoLogout value)? doLogout,
  }) {
    return doLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginStarted value)? started,
    TResult Function(DoLoginOrRegister value)? doLoginOrRegister,
    TResult Function(DoLoginOrRegisterWithGoogle value)?
        doLoginOrRegisterWithGoogle,
    TResult Function(DoLogout value)? doLogout,
    required TResult orElse(),
  }) {
    if (doLogout != null) {
      return doLogout(this);
    }
    return orElse();
  }
}

abstract class DoLogout implements LoginEvent {
  const factory DoLogout() = _$DoLogoutImpl;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  AppLoad load() {
    return const AppLoad();
  }

  AppLoggedin loggedIn() {
    return const AppLoggedin();
  }

  AppLoggedOut loggedOut() {
    return const AppLoggedOut();
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoad value) load,
    required TResult Function(AppLoggedin value) loggedIn,
    required TResult Function(AppLoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoad value)? load,
    TResult Function(AppLoggedin value)? loggedIn,
    TResult Function(AppLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class $AppLoadCopyWith<$Res> {
  factory $AppLoadCopyWith(AppLoad value, $Res Function(AppLoad) then) =
      _$AppLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLoadCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppLoadCopyWith<$Res> {
  _$AppLoadCopyWithImpl(AppLoad _value, $Res Function(AppLoad) _then)
      : super(_value, (v) => _then(v as AppLoad));

  @override
  AppLoad get _value => super._value as AppLoad;
}

/// @nodoc
class _$AppLoad implements AppLoad {
  const _$AppLoad();

  @override
  String toString() {
    return 'AppState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoad value) load,
    required TResult Function(AppLoggedin value) loggedIn,
    required TResult Function(AppLoggedOut value) loggedOut,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoad value)? load,
    TResult Function(AppLoggedin value)? loggedIn,
    TResult Function(AppLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class AppLoad implements AppState {
  const factory AppLoad() = _$AppLoad;
}

/// @nodoc
abstract class $AppLoggedinCopyWith<$Res> {
  factory $AppLoggedinCopyWith(
          AppLoggedin value, $Res Function(AppLoggedin) then) =
      _$AppLoggedinCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLoggedinCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppLoggedinCopyWith<$Res> {
  _$AppLoggedinCopyWithImpl(
      AppLoggedin _value, $Res Function(AppLoggedin) _then)
      : super(_value, (v) => _then(v as AppLoggedin));

  @override
  AppLoggedin get _value => super._value as AppLoggedin;
}

/// @nodoc
class _$AppLoggedin implements AppLoggedin {
  const _$AppLoggedin();

  @override
  String toString() {
    return 'AppState.loggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppLoggedin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoad value) load,
    required TResult Function(AppLoggedin value) loggedIn,
    required TResult Function(AppLoggedOut value) loggedOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoad value)? load,
    TResult Function(AppLoggedin value)? loggedIn,
    TResult Function(AppLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class AppLoggedin implements AppState {
  const factory AppLoggedin() = _$AppLoggedin;
}

/// @nodoc
abstract class $AppLoggedOutCopyWith<$Res> {
  factory $AppLoggedOutCopyWith(
          AppLoggedOut value, $Res Function(AppLoggedOut) then) =
      _$AppLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLoggedOutCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppLoggedOutCopyWith<$Res> {
  _$AppLoggedOutCopyWithImpl(
      AppLoggedOut _value, $Res Function(AppLoggedOut) _then)
      : super(_value, (v) => _then(v as AppLoggedOut));

  @override
  AppLoggedOut get _value => super._value as AppLoggedOut;
}

/// @nodoc
class _$AppLoggedOut implements AppLoggedOut {
  const _$AppLoggedOut();

  @override
  String toString() {
    return 'AppState.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLoad value) load,
    required TResult Function(AppLoggedin value) loggedIn,
    required TResult Function(AppLoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLoad value)? load,
    TResult Function(AppLoggedin value)? loggedIn,
    TResult Function(AppLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class AppLoggedOut implements AppState {
  const factory AppLoggedOut() = _$AppLoggedOut;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerStateTearOff {
  const _$PlayerStateTearOff();

  _PlayerInit init() {
    return const _PlayerInit();
  }

  _PlayerError error(String errorMessage) {
    return _PlayerError(
      errorMessage,
    );
  }

  _PlayerPlay play(
      bool isPlay, String imageHolder, String musicUrl, String name) {
    return _PlayerPlay(
      isPlay,
      imageHolder,
      musicUrl,
      name,
    );
  }
}

/// @nodoc
const $PlayerState = _$PlayerStateTearOff();

/// @nodoc
mixin _$PlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String errorMessage) error,
    required TResult Function(
            bool isPlay, String imageHolder, String musicUrl, String name)
        play,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String errorMessage)? error,
    TResult Function(
            bool isPlay, String imageHolder, String musicUrl, String name)?
        play,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInit value) init,
    required TResult Function(_PlayerError value) error,
    required TResult Function(_PlayerPlay value) play,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInit value)? init,
    TResult Function(_PlayerError value)? error,
    TResult Function(_PlayerPlay value)? play,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res> implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  final PlayerState _value;
  // ignore: unused_field
  final $Res Function(PlayerState) _then;
}

/// @nodoc
abstract class _$PlayerInitCopyWith<$Res> {
  factory _$PlayerInitCopyWith(
          _PlayerInit value, $Res Function(_PlayerInit) then) =
      __$PlayerInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$PlayerInitCopyWithImpl<$Res> extends _$PlayerStateCopyWithImpl<$Res>
    implements _$PlayerInitCopyWith<$Res> {
  __$PlayerInitCopyWithImpl(
      _PlayerInit _value, $Res Function(_PlayerInit) _then)
      : super(_value, (v) => _then(v as _PlayerInit));

  @override
  _PlayerInit get _value => super._value as _PlayerInit;
}

/// @nodoc
class _$_PlayerInit implements _PlayerInit {
  const _$_PlayerInit();

  @override
  String toString() {
    return 'PlayerState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PlayerInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String errorMessage) error,
    required TResult Function(
            bool isPlay, String imageHolder, String musicUrl, String name)
        play,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String errorMessage)? error,
    TResult Function(
            bool isPlay, String imageHolder, String musicUrl, String name)?
        play,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInit value) init,
    required TResult Function(_PlayerError value) error,
    required TResult Function(_PlayerPlay value) play,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInit value)? init,
    TResult Function(_PlayerError value)? error,
    TResult Function(_PlayerPlay value)? play,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _PlayerInit implements PlayerState {
  const factory _PlayerInit() = _$_PlayerInit;
}

/// @nodoc
abstract class _$PlayerErrorCopyWith<$Res> {
  factory _$PlayerErrorCopyWith(
          _PlayerError value, $Res Function(_PlayerError) then) =
      __$PlayerErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$PlayerErrorCopyWithImpl<$Res> extends _$PlayerStateCopyWithImpl<$Res>
    implements _$PlayerErrorCopyWith<$Res> {
  __$PlayerErrorCopyWithImpl(
      _PlayerError _value, $Res Function(_PlayerError) _then)
      : super(_value, (v) => _then(v as _PlayerError));

  @override
  _PlayerError get _value => super._value as _PlayerError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_PlayerError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_PlayerError implements _PlayerError {
  const _$_PlayerError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PlayerState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$PlayerErrorCopyWith<_PlayerError> get copyWith =>
      __$PlayerErrorCopyWithImpl<_PlayerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String errorMessage) error,
    required TResult Function(
            bool isPlay, String imageHolder, String musicUrl, String name)
        play,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String errorMessage)? error,
    TResult Function(
            bool isPlay, String imageHolder, String musicUrl, String name)?
        play,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInit value) init,
    required TResult Function(_PlayerError value) error,
    required TResult Function(_PlayerPlay value) play,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInit value)? init,
    TResult Function(_PlayerError value)? error,
    TResult Function(_PlayerPlay value)? play,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PlayerError implements PlayerState {
  const factory _PlayerError(String errorMessage) = _$_PlayerError;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PlayerErrorCopyWith<_PlayerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlayerPlayCopyWith<$Res> {
  factory _$PlayerPlayCopyWith(
          _PlayerPlay value, $Res Function(_PlayerPlay) then) =
      __$PlayerPlayCopyWithImpl<$Res>;
  $Res call({bool isPlay, String imageHolder, String musicUrl, String name});
}

/// @nodoc
class __$PlayerPlayCopyWithImpl<$Res> extends _$PlayerStateCopyWithImpl<$Res>
    implements _$PlayerPlayCopyWith<$Res> {
  __$PlayerPlayCopyWithImpl(
      _PlayerPlay _value, $Res Function(_PlayerPlay) _then)
      : super(_value, (v) => _then(v as _PlayerPlay));

  @override
  _PlayerPlay get _value => super._value as _PlayerPlay;

  @override
  $Res call({
    Object? isPlay = freezed,
    Object? imageHolder = freezed,
    Object? musicUrl = freezed,
    Object? name = freezed,
  }) {
    return _then(_PlayerPlay(
      isPlay == freezed
          ? _value.isPlay
          : isPlay // ignore: cast_nullable_to_non_nullable
              as bool,
      imageHolder == freezed
          ? _value.imageHolder
          : imageHolder // ignore: cast_nullable_to_non_nullable
              as String,
      musicUrl == freezed
          ? _value.musicUrl
          : musicUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_PlayerPlay implements _PlayerPlay {
  const _$_PlayerPlay(this.isPlay, this.imageHolder, this.musicUrl, this.name);

  @override
  final bool isPlay;
  @override
  final String imageHolder;
  @override
  final String musicUrl;
  @override
  final String name;

  @override
  String toString() {
    return 'PlayerState.play(isPlay: $isPlay, imageHolder: $imageHolder, musicUrl: $musicUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerPlay &&
            (identical(other.isPlay, isPlay) ||
                const DeepCollectionEquality().equals(other.isPlay, isPlay)) &&
            (identical(other.imageHolder, imageHolder) ||
                const DeepCollectionEquality()
                    .equals(other.imageHolder, imageHolder)) &&
            (identical(other.musicUrl, musicUrl) ||
                const DeepCollectionEquality()
                    .equals(other.musicUrl, musicUrl)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isPlay) ^
      const DeepCollectionEquality().hash(imageHolder) ^
      const DeepCollectionEquality().hash(musicUrl) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$PlayerPlayCopyWith<_PlayerPlay> get copyWith =>
      __$PlayerPlayCopyWithImpl<_PlayerPlay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String errorMessage) error,
    required TResult Function(
            bool isPlay, String imageHolder, String musicUrl, String name)
        play,
  }) {
    return play(isPlay, imageHolder, musicUrl, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String errorMessage)? error,
    TResult Function(
            bool isPlay, String imageHolder, String musicUrl, String name)?
        play,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(isPlay, imageHolder, musicUrl, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInit value) init,
    required TResult Function(_PlayerError value) error,
    required TResult Function(_PlayerPlay value) play,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInit value)? init,
    TResult Function(_PlayerError value)? error,
    TResult Function(_PlayerPlay value)? play,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _PlayerPlay implements PlayerState {
  const factory _PlayerPlay(
          bool isPlay, String imageHolder, String musicUrl, String name) =
      _$_PlayerPlay;

  bool get isPlay => throw _privateConstructorUsedError;
  String get imageHolder => throw _privateConstructorUsedError;
  String get musicUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PlayerPlayCopyWith<_PlayerPlay> get copyWith =>
      throw _privateConstructorUsedError;
}

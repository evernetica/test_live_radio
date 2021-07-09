part of 'player_cubit.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState.init() = _PlayerInit;
  const factory PlayerState.error(String errorMessage) = _PlayerError;
  const factory PlayerState.play(bool isPlay, String imageHolder, String musicUrl, String name) = _PlayerPlay;
}

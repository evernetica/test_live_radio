import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_live_radio/domain/usecase/use_case_get_music.dart';

part 'player_state.dart';

part 'player_cubit.freezed.dart';

class PlayerCubit extends Cubit<PlayerState> {
  final _assetsAudioPlayer = AssetsAudioPlayer();

  final GetMusicUseCaseImpl _getMusicUseCaseImpl;
  bool _isPlay = false;

  late Stream<bool> isPlayingStream;

  PlayerCubit(this._getMusicUseCaseImpl) : super(PlayerState.init()) {
    _start();
    isPlayingStream = _assetsAudioPlayer.isPlaying;
  }

  void _start() async {
    _getMusicUseCaseImpl.getNextSingleMusic().then((value) {
      _isPlay = false;
      _play(value.musicUrl);
      emit(PlayerState.play(
          false, value.imageHolder, value.musicUrl, value.name));
    }).onError((error, stackTrace) {
      emit(PlayerState.error(error.toString()));
    });
  }

  void onNext() async {
    await _getMusicUseCaseImpl.getNextSingleMusic().then((value) {
      _isPlay = true;
      _play(value.musicUrl);
      emit(PlayerState.play(
          true, value.imageHolder, value.musicUrl, value.name));
    }).onError((error, stackTrace) {
      emit(PlayerState.error(error.toString()));
    });
  }

  void onPrev() async {
    await _getMusicUseCaseImpl.getPrevSingleMusic().then((value) {
      _isPlay = true;
      _play(value.musicUrl);
      emit(PlayerState.play(
          true, value.imageHolder, value.musicUrl, value.name));
    }).onError((error, stackTrace) {});
  }

  void onChangePlayStop() async {
    this._isPlay = !_isPlay;
    if (this._isPlay)
      _assetsAudioPlayer.play();
    else
      _assetsAudioPlayer.stop();
  }

  void _play(String url) {
    try {
      _assetsAudioPlayer.open(Audio.liveStream(url),
          showNotification: true,
          autoStart: _isPlay,
          notificationSettings:
              NotificationSettings(customPrevAction: (player) {
            onPrev();
          }, customNextAction: (player) {
            onNext();
          }));
    } catch (t) {
      //stream unreachable
    }
  }
}

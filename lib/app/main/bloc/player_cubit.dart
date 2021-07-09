import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_live_radio/domain/usecase/use_case_get_music.dart';

part 'player_state.dart';

part 'player_cubit.freezed.dart';

class PlayerCubit extends Cubit<PlayerState> {
  final GetMusicUseCaseImpl _getMusicUseCaseImpl;

  PlayerCubit(this._getMusicUseCaseImpl) : super(PlayerState.init()) {
    _start();
  }

  void _start() async {
    _getMusicUseCaseImpl.getNextSingleMusic().then((value) => {
      emit(PlayerState.play(false, value.imageHolder, value.musicUrl, value.name))
    }).onError((
        error, stackTrace) => {});
  }

  void onNext() async {
    await _getMusicUseCaseImpl.getNextSingleMusic().then((value) => {
      emit(PlayerState.play(true, value.imageHolder, value.musicUrl, value.name))
    }).onError((
        error, stackTrace) => {});
  }

  void onPrev() async {
    await _getMusicUseCaseImpl.getPrevSingleMusic().then((value) => {
      emit(PlayerState.play(true, value.imageHolder, value.musicUrl, value.name))
    }).onError((
        error, stackTrace) => {});
  }

  void onPlay(bool isPlay) async {}
}

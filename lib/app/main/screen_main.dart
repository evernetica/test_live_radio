import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_live_radio/app/common/platform_page.dart';
import 'package:test_live_radio/app/common/platform_scaffold.dart';
import 'package:test_live_radio/app/main/bloc/player_cubit.dart';
import 'package:test_live_radio/domain/usecase/use_case_get_music.dart';

class MainPage extends PlatformPage {
  MainPage() : super(_MainWidget(), "/main");
}

class _MainWidget extends StatelessWidget {
  late PlayerCubit _playerCubit;

  @override
  Widget build(BuildContext context) {
    _playerCubit = PlayerCubit(GetIt.instance.get<GetMusicUseCaseImpl>());

    return PlatformScaffold(
      child: BlocBuilder<PlayerCubit, PlayerState>(
        bloc: _playerCubit,
        builder: (context, state) {
          return state.when(
              init: () => _init(context),
              error: (errorMessage) => _error(context, errorMessage),
              play: (isPlay, imageHolder, musicUrl, name) =>
                  _play(context, isPlay, imageHolder, musicUrl, name));
        },
      ),
    );
  }

  Widget _init(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _error(BuildContext context, String errorMessage) {
    return Center(
      child: Text(errorMessage),
    );
  }

  Widget _play(BuildContext context, bool isPlay, String imageHolder,
      String musicUrl, String name) {
    return Center(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.network(imageHolder),
            ),
          ),
          Text(name),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: _onPrevButton,
                  icon: Icon(Icons.skip_previous_sharp)),
              StreamBuilder<bool>(
                stream: _playerCubit.isPlayingStream,
                builder: (context, snapshot) {
                  final bool isPlaying = snapshot.data ?? false;
                  return IconButton(
                      onPressed: _onPlayButton, icon: Icon(isPlaying ? Icons.stop_circle_outlined : Icons.play_circle_outline));
                }
              ),
              IconButton(
                  onPressed: _onNextButton, icon: Icon(Icons.skip_next_sharp))
            ],
          )
        ],
      ),
    );
  }

  void _onNextButton() {
    _playerCubit.onNext();
  }

  void _onPrevButton() {
    _playerCubit.onPrev();
  }

  void _onPlayButton() {
    _playerCubit.onChangePlayStop();
  }
}

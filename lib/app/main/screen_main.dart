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
          GestureDetector(
            onHorizontalDragEnd: (dragEndDetails){
              if(dragEndDetails.primaryVelocity == null) return;
              if (dragEndDetails.primaryVelocity!.isNegative) {
                _onNextAction();
              } else  {
                _onPrevAction();
              }
            },
            child: AnimatedSwitcher(
              switchInCurve: Curves.easeInCirc,
              switchOutCurve: Curves.easeOutCirc,
              duration: Duration(milliseconds: 500),
              child: Center(
                key: Key( musicUrl),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.network(
                        imageHolder,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.black26,
                              color: Colors.green,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Align(
                alignment:  Alignment.center,
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _iconButton(Icon(Icons.skip_previous_sharp), _onPrevAction),
                StreamBuilder<bool>(
                    stream: _playerCubit.isPlayingStream,
                    builder: (context, snapshot) {
                      final bool isPlaying = snapshot.data ?? false;
                      return _iconButton(
                          Icon(isPlaying
                              ? Icons.stop_circle_outlined
                              : Icons.play_circle_outline),
                          _onPlayButton);
                    }),
                _iconButton(Icon(Icons.skip_next_sharp), _onNextAction)
              ],
            ),
          )
        ],
      ),
    );
  }

  void _onNextAction() {
    _playerCubit.onNext();
  }

  void _onPrevAction() {
    _playerCubit.onPrev();
  }

  void _onPlayButton() {
    _playerCubit.onChangePlayStop();
  }

  Widget _iconButton(Widget icon, VoidCallback? _pressed) {
    return Expanded(
        flex: 1, child: IconButton(onPressed: _pressed, icon: icon, iconSize: 48,)
    );
  }
}

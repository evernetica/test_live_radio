import 'package:flutter/foundation.dart';
import 'package:test_live_radio/domain/entity/entity_music.dart';
import 'package:test_live_radio/domain/repository/repository_data.dart';

class GetMusicUseCaseImpl {
  final DataRepository _dataRepository;

  GetMusicUseCaseImpl(this._dataRepository);

  Future<MusicEntity> getNextSingleMusic() {
    return _dataRepository.getNextSingleMusic();
  }

  Future<MusicEntity> getPrevSingleMusic() {
    return _dataRepository.getPrevSingleMusic();
  }
}

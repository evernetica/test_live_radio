import 'package:test_live_radio/domain/entity/entity_music.dart';

abstract class DataRepository {
  Future<MusicEntity> getNextSingleMusic();
  Future<MusicEntity> getPrevSingleMusic();
}

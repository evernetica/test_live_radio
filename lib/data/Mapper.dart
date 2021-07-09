import 'package:test_live_radio/data/objects/object_music.dart';
import 'package:test_live_radio/domain/entity/entity_music.dart';

//Mapper
MusicEntity musicObjectToMusicEntity(MusicObject musicObject) {
  return MusicEntity(true, musicObject.holderUrl, musicObject.musicUrl, musicObject.name);
}
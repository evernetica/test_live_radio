import 'package:flutter/foundation.dart';
import 'package:test_live_radio/data/Mapper.dart';
import 'package:test_live_radio/data/objects/object_music.dart';
import 'package:test_live_radio/domain/entity/entity_music.dart';
import 'package:test_live_radio/domain/repository/repository_data.dart';

class DataRepositoryImpl extends DataRepository {
  List<MusicObject> _musicList = List.empty(growable: true);
  MusicObject? currentSingleMusic;

  DataRepositoryImpl() {
    //TODO: remove and add api
    var item = MusicObject(
        "id1423123",
        "http://ais-edge16-jbmedia-nyc04.cdnstream.com/hitlist",
        "https://via.placeholder.com/500/0000FF/FFFFFF/?text=Super%20Hits",
        "Super Hits ");
    var item2 = MusicObject(
        "id234134",
        "http://us3.internet-radio.com:8317/live",
        "https://via.placeholder.com/500/FF00FF/FFFFFF/?text=Retro%20Records",
        "Retro Records");
    _musicList.add(item);
    _musicList.add(item2);
  }

  @override
  Future<MusicEntity> getNextSingleMusic() async {
    //TODO: !!
    if (currentSingleMusic == null)
      currentSingleMusic = _musicList.first;
    else
      currentSingleMusic = _musicList
          .firstWhere((element) => element.id != currentSingleMusic!.id);
    return Future.value(musicObjectToMusicEntity(currentSingleMusic!));
  }

  @override
  Future<MusicEntity> getPrevSingleMusic() async {
    //TODO: !!
    if (currentSingleMusic == null)
      currentSingleMusic = _musicList.first;
    else
      currentSingleMusic = _musicList
          .firstWhere((element) => element.id != currentSingleMusic!.id);
    return Future.value(musicObjectToMusicEntity(currentSingleMusic!));
  }
}

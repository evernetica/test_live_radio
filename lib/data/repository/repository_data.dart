import 'package:flutter/foundation.dart';
import 'package:gsheets/gsheets.dart';
import 'package:test_live_radio/data/Mapper.dart';
import 'package:test_live_radio/data/objects/object_music.dart';
import 'package:test_live_radio/domain/entity/entity_music.dart';
import 'package:test_live_radio/domain/repository/repository_data.dart';

import '../gsheet_cred.dart';

class DataRepositoryImpl extends DataRepository {
  List<MusicObject> _musicList = List.empty(growable: true);
  MusicObject? currentSingleMusic;

  Worksheet? _sheet;

  Future<void> _init() async {
    _sheet = (await GSheets(credentials).spreadsheet(spreadsheetId))
        .worksheetByTitle('radio');
  }

  Future<List<MusicObject>> getAll() async {
    if (_sheet == null) await _init();
    if (_sheet == null) throw Exception("Google sheet is null");
    final musics = await _sheet!.values.map.allRows();
    if (musics!.isEmpty) throw Exception("There is no data in google sheet");
    return musics.map((json) => MusicObject.fromGsheets(json)).toList();
  }

  @override
  Future<MusicEntity> getNextSingleMusic() async {
    //TODO: !!order is wrong
    _musicList.clear();
    _musicList.addAll(await getAll());
    if (currentSingleMusic == null)
      currentSingleMusic = _musicList.first;
    else
      currentSingleMusic = _musicList
          .firstWhere((element) => element.id != currentSingleMusic!.id);
    return Future.value(musicObjectToMusicEntity(currentSingleMusic!));
  }

  @override
  Future<MusicEntity> getPrevSingleMusic() async {
    //TODO: !!order is wrong
    _musicList.clear();
    _musicList.addAll(await getAll());
    if (currentSingleMusic == null)
      currentSingleMusic = _musicList.first;
    else
      currentSingleMusic = _musicList
          .firstWhere((element) => element.id != currentSingleMusic!.id);
    return Future.value(musicObjectToMusicEntity(currentSingleMusic!));
  }
}

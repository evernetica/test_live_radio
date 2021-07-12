import 'dart:collection';

import 'package:gsheets/gsheets.dart';
import 'package:test_live_radio/data/Mapper.dart';
import 'package:test_live_radio/data/objects/object_music.dart';
import 'package:test_live_radio/domain/entity/entity_music.dart';
import 'package:test_live_radio/domain/repository/repository_data.dart';

import '../gsheet_cred.dart';

class DataRepositoryImpl extends DataRepository {
  DoubleLinkedQueue<MusicObject> _musicList = DoubleLinkedQueue<MusicObject>();
  DoubleLinkedQueueEntry<MusicObject>? _currentSingleMusicEntry;

  Worksheet? _sheet;

  Future<void> _init() async {
    _sheet = (await GSheets(credentials).spreadsheet(spreadsheetId))
        .worksheetByTitle('radio');
  }

  Future<List<MusicObject>> _getAll() async {
    if (_sheet == null) await _init();
    if (_sheet == null) throw ("Google sheet is null");
    final musics = await _sheet!.values.map.allRows();
    if (musics == null) throw ("There is no data in google sheet");
    if (musics.isEmpty) throw ("There is no data in google sheet");
    return musics.map((json) => MusicObject.fromGsheets(json)).toList();
  }

  @override
  Future<MusicEntity> getNextSingleMusic() async {
    _musicList.clear();
    _musicList.addAll(await _getAll());
    if (_currentSingleMusicEntry == null)
      _currentSingleMusicEntry = _musicList.firstEntry();
    else {
      _currentSingleMusicEntry = _currentSingleMusicEntry?.nextEntry();
      if(_currentSingleMusicEntry?.element == null) _currentSingleMusicEntry = _musicList.firstEntry();
    }
    return Future.value(musicObjectToMusicEntity(_currentSingleMusicEntry!.element));
  }

  @override
  Future<MusicEntity> getPrevSingleMusic() async {
    _musicList.clear();
    _musicList.addAll(await _getAll());
    if (_currentSingleMusicEntry == null)
      _currentSingleMusicEntry = _musicList.firstEntry();
    else {
      _currentSingleMusicEntry = _currentSingleMusicEntry?.previousEntry();
      if(_currentSingleMusicEntry?.element == null) _currentSingleMusicEntry = _musicList.firstEntry();
    }

    return Future.value(musicObjectToMusicEntity(_currentSingleMusicEntry!.element));
  }
}

import 'package:get_it/get_it.dart';
import 'package:test_live_radio/domain/repository/repository_data.dart';
import 'package:test_live_radio/domain/usecase/use_case_get_music.dart';

class DomainModule {
  DomainModule(GetIt _getIt) {
    _getIt.registerFactory<GetMusicUseCaseImpl>(() => GetMusicUseCaseImpl(_getIt.get<DataRepository>()));
  }
}
import 'package:get_it/get_it.dart';
import 'package:test_live_radio/data/repository/repository_data.dart';
import 'package:test_live_radio/domain/repository/repository_data.dart';

class DataModule {
  DataModule(GetIt _getIt) {
    _getIt.registerSingleton<DataRepository>(DataRepositoryImpl());
  }
}

import 'dart:io';

import 'package:book_search/data/dto/app_settings_dto.dart';
import 'package:book_search/data/dto/work_dto.dart';
import 'package:book_search/domain/hive/hive_registrar.g.dart';
import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';
late final Box<WorkDto> favouriteBox;
late final Box<AppSettingsDto> appSettingsBox;

//Инициализиуем Hive и боксы которые он хранит
class HiveInitialize {
  var _initialized = false;

  bool get isInitialized => _initialized;

  Future<bool> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive
      ..init(dir.path)
      ..registerAdapters();

    try {
      favouriteBox = await Hive.openBox<WorkDto>('favourite_box');
      appSettingsBox = await Hive.openBox<AppSettingsDto>('settings');

      _initialized = true;
    } catch (e, trace) {
      print(e);
      _initialized = false;
    }
    return _initialized;
  }

  Future<bool> clearData() async {
    try {
      await favouriteBox.clear();
      await appSettingsBox.clear();
      return true;
    } catch (e, trace) {
      return false;
    }
  }
}

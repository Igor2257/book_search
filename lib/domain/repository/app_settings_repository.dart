import 'package:book_search/data/dto/app_settings_dto.dart';
import 'package:book_search/domain/hive/app_settings_hive.dart';

abstract class AppSettingsRepository {
  Future<AppSettingsDto> getSettings();

  Future<void> saveSettings(AppSettingsDto settings);
}

class AppSettingsRepositoryImpl implements AppSettingsRepository {
  final AppSettingsHive appSettingsHive;

  AppSettingsRepositoryImpl(this.appSettingsHive);

  @override
  Future<AppSettingsDto> getSettings() async {
    return appSettingsHive.getAppSettings(); // default light theme
  }

  @override
  Future<void> saveSettings(AppSettingsDto settings) async {
    await appSettingsHive.update(settings);
  }
}

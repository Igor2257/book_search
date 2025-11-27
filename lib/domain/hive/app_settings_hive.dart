import 'package:book_search/data/dto/app_settings_dto.dart';
import 'package:book_search/domain/hive/hive_interface.dart';
import 'package:flutter/material.dart';

import 'hive_initialize.dart';

class AppSettingsHive implements HiveInterface<AppSettingsDto> {
  factory AppSettingsHive() => instance;

  AppSettingsHive._();

  static final AppSettingsHive instance = AppSettingsHive._();

  AppSettingsDto getAppSettings() {
    AppSettingsDto? appSettings = appSettingsBox.get("app_settings");
    if (appSettings == null) {
      appSettingsBox.put("app_settings", AppSettingsDto(isLight: true));
      appSettings = appSettingsBox.get("app_settings");
    }
    return appSettings!;
  }

  @override
  Future<bool> clear() async {
    try {
      await appSettingsBox.put("app_settings", AppSettingsDto(isLight: true));
      return true;
    } catch (e, trace) {
      return false;
    }
  }

  @override
  Future<bool> create(AppSettingsDto item) async {
    try {
      await appSettingsBox.put("app_settings", item);
      return true;
    } catch (e, trace) {
      return false;
    }
  }

  @override
  Future<bool> delete(String id) async {
    try {
      await appSettingsBox.delete(id);
      return true;
    } catch (e, trace) {
      return false;
    }
  }

  @override
  Future<bool> update(AppSettingsDto item) async {
    try {
      await appSettingsBox.put("app_settings", item);
      return true;
    } catch (e, trace) {
      return false;
    }
  }
}

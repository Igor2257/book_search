import 'package:book_search/common/utils/styles/themes/app_theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppAppBarTheme {
  static AppBarTheme get lightTheme => _lightTheme();

  static AppBarTheme get darkTheme => _darkTheme();

  static AppBarTheme _lightTheme() => AppBarTheme(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      // тёмные иконки на светлом фоне
      systemNavigationBarColor: Colors.transparent,
      // фон навигационной панели
      systemNavigationBarIconBrightness: Brightness.dark, // тёмные иконки
    ),
    titleTextStyle: AppTextTheme.lightTheme.titleLarge?.copyWith(fontSize: 20),
  );

  static AppBarTheme _darkTheme() => _lightTheme();
}

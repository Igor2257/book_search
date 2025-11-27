import 'package:book_search/common/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

import 'app_text_theme.dart';

abstract class AppBottomNavigationBarTheme {
  static BottomNavigationBarThemeData get lightTheme => _lightTheme();

  static BottomNavigationBarThemeData get darkTheme => _darkTheme();

  static BottomNavigationBarThemeData _lightTheme() =>
      BottomNavigationBarThemeData(
        backgroundColor: mainColor,
        elevation: 0,
        selectedItemColor: mainWhite,
        unselectedItemColor: mainWhite.withOpacity(.3),
        selectedIconTheme: IconThemeData(color: mainWhite),
        unselectedIconTheme: IconThemeData(color: mainWhite.withOpacity(.3)),
        unselectedLabelStyle: AppTextTheme.lightTheme.titleLarge?.copyWith(
          color: mainWhite.withOpacity(.3),
        ),
        selectedLabelStyle: AppTextTheme.lightTheme.titleLarge?.copyWith(
          color: mainWhite,
        ),
      );

  static BottomNavigationBarThemeData _darkTheme() => _lightTheme();
}

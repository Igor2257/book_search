import 'package:flutter/material.dart';
import 'package:book_search/common/utils/styles/colors/app_colors.dart';

import 'package:book_search/common/utils/styles/themes/app_theme/app_app_bar_theme.dart';
import 'package:book_search/common/utils/styles/themes/app_theme/app_chip_theme.dart';
import 'package:book_search/common/utils/styles/themes/app_theme/app_dialog_theme.dart';
import 'package:book_search/common/utils/styles/themes/app_theme/app_input_decoration_theme.dart';
import 'package:book_search/common/utils/styles/themes/app_theme/app_text_theme.dart';

import 'app_bottom_navigation_bar_theme.dart';

abstract class AppThemeData {
  static ThemeData get lightTheme => _lightTheme();

  static ThemeData get darkTheme => _darkTheme();

  static ThemeData _lightTheme() => ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: mainWhite,
    appBarTheme: AppAppBarTheme.lightTheme,
    textTheme: AppTextTheme.lightTheme,
    inputDecorationTheme: AppInputDecorationTheme.lightTheme,
    bottomNavigationBarTheme: AppBottomNavigationBarTheme.lightTheme,
    dialogTheme: AppDialogTheme.lightTheme,
    chipTheme: AppChipTheme.lightTheme,
  );

  static ThemeData _darkTheme() => lightTheme.copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: mainWhite,
    appBarTheme: AppAppBarTheme.darkTheme,
    textTheme: AppTextTheme.darkTheme,
    inputDecorationTheme: AppInputDecorationTheme.darkTheme,
    bottomNavigationBarTheme: AppBottomNavigationBarTheme.darkTheme,
    dialogTheme: AppDialogTheme.darkTheme,
    chipTheme: AppChipTheme.darkTheme,
  );
}

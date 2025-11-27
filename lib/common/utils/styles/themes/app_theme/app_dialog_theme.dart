import 'package:flutter/material.dart';
import 'package:book_search/common/utils/styles/colors/app_colors.dart';


class AppDialogTheme {
  static DialogThemeData get lightTheme => _lightTheme();

  static DialogThemeData get darkTheme => _darkTheme();

  static DialogThemeData _lightTheme() => DialogThemeData(
    backgroundColor: mainWhite,
    surfaceTintColor: mainWhite,
    elevation: 0,
  );

  static DialogThemeData _darkTheme() => _lightTheme();
}

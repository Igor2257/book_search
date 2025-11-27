import 'package:book_search/common/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppChipTheme {
  static ChipThemeData get lightTheme => _lightTheme();

  static ChipThemeData get darkTheme => _darkTheme();

  static ChipThemeData _lightTheme() => ChipThemeData(
    backgroundColor: mainWhite,
    surfaceTintColor: mainWhite,
    disabledColor: mainWhite,
    selectedColor: mainColor.withOpacity(.3),
    elevation: 0,
  );

  static ChipThemeData _darkTheme() => _lightTheme();
}

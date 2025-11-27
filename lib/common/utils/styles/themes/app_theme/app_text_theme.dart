import 'package:book_search/common/utils/styles/themes/font_family/font_family.dart';
import 'package:flutter/material.dart';
import 'package:book_search/common/utils/styles/colors/app_colors.dart';

abstract class AppTextTheme {
  static TextTheme get lightTheme => _lightTheme();

  static TextTheme get darkTheme => _darkTheme();

  static TextTheme _lightTheme() => TextTheme(
        bodyLarge: TextStyle(
          color: blackText,
          fontFamily: FontFamily.robotoRegular,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: blackText,
          fontFamily: FontFamily.robotoRegular,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          color: blackText,
          fontFamily: FontFamily.robotoRegular,
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
        titleSmall: TextStyle(
          color: blackText,
          fontFamily: FontFamily.robotoRegular,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        titleMedium: TextStyle(
          color: blackText,
          fontFamily: FontFamily.robotoBold,
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
        titleLarge: TextStyle(
          color: blackText,
          fontFamily: FontFamily.robotoBold,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),


      );

  static TextTheme _darkTheme() =>_lightTheme();
}

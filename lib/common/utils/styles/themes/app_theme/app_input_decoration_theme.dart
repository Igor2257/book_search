import 'package:book_search/common/utils/styles/themes/app_theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:book_search/common/utils/styles/colors/app_colors.dart';

abstract class AppInputDecorationTheme {
  static InputDecorationTheme get lightTheme => _lightTheme();

  static InputDecorationTheme get darkTheme => _darkTheme();

  static InputDecorationTheme _lightTheme() => InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    errorBorder: _buildErrorBorder(),
    focusedErrorBorder: _buildErrorBorder(),
    focusedBorder: _buildBorder(),
    enabledBorder: _buildBorder(),
    hintStyle: _buildTextStyle(mainGrey),
    prefixStyle: _buildTextStyle(mainGrey),
    errorStyle: _buildTextStyle(Colors.red),
    counterStyle: _buildTextStyle(mainGrey),
    suffixIconColor: mainGrey,
    prefixIconColor: mainGrey,
    filled: true,
    fillColor: Colors.transparent,
  );

  static InputDecorationTheme _darkTheme() => InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    errorBorder: _buildErrorBorder(),
    focusedErrorBorder: _buildErrorBorder(),
    focusedBorder: _buildBorder(),
    enabledBorder: _buildBorder(),
    hintStyle: _buildTextStyle(mainWhite),
    prefixStyle: _buildTextStyle(mainWhite),
    errorStyle: _buildTextStyle(Colors.red),
    counterStyle: _buildTextStyle(mainWhite),
    suffixIconColor: mainGrey,
    prefixIconColor: mainGrey,
    filled: true,
    fillColor: Colors.transparent,
  );

  static OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: mainColor),
    );
  }

  static OutlineInputBorder _buildErrorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.red),
    );
  }

  static TextStyle _buildTextStyle(Color textColor) {
    return AppTextTheme.lightTheme.bodyMedium!.copyWith(color: textColor);
  }
}

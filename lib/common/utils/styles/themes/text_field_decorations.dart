import 'package:book_search/common/utils/styles/themes/app_theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:book_search/common/utils/styles/colors/app_colors.dart';


abstract class BaseTextDecoration {
  InputDecoration build();
}

class RegularDecoration extends BaseTextDecoration {
  final String? hintText;
  final String? labelText;
  final EdgeInsets? contentPadding;
  final InputBorder? borderSide;
  final Color? borderColor;
  final double? borderRadius;
  final Widget? suffix;

  RegularDecoration({
    this.hintText,
    this.labelText,
    this.contentPadding,
    this.borderSide,
    this.borderColor,
    this.borderRadius,
    this.suffix,
  });

  @override
  InputDecoration build() {
    return InputDecoration(
      contentPadding:
          contentPadding ?? EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      labelText: labelText,
      labelStyle: AppTextTheme.lightTheme.bodyMedium?.copyWith(
        color: mainBlack,
      ),
      hintText: hintText,
      hintStyle: AppTextTheme.lightTheme.bodyMedium?.copyWith(
        color: mainBlack.withOpacity(.3),
      ),
      border:
          borderSide ??
          OutlineInputBorder(
            borderSide: BorderSide(color: borderColor ?? Colors.black),
            borderRadius: BorderRadius.circular(borderRadius ?? 20),
          ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: red),
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
      ),
      focusedBorder:
          borderSide ??
          OutlineInputBorder(
            borderSide: BorderSide(color: mainBlack),
            borderRadius: BorderRadius.circular(borderRadius ?? 20),
          ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: red),
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
      ),
      disabledBorder:
          borderSide ??
          OutlineInputBorder(
            borderSide: BorderSide(color: mainBlack),
            borderRadius: BorderRadius.circular(borderRadius ?? 20),
          ),
      enabledBorder:
          borderSide ??
          OutlineInputBorder(
            borderSide: BorderSide(color: mainBlack),
            borderRadius: BorderRadius.circular(borderRadius ?? 20),
          ),
      suffixIcon: suffix,
    );
  }
}

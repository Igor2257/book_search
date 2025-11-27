import 'package:flutter/material.dart';

class ColorMapper {
  static Color fromJson(String color) {
    color = color.replaceFirst('#', '');
    return Color(int.parse('FF$color', radix: 16));
  }

  static Color? fromJsonCouldBeNull(String color) {
    try {
      color = color.replaceFirst('#', '');
      return Color(int.parse('FF$color', radix: 16));
    } catch (_) {
      return null;
    }
  }
  static String toJson(Color color) {
    return '#${color.value.toRadixString(16).substring(2).padLeft(6, '0')}';
  }
  static String? toJsonCouldBeNull(Color? color) {
    if(color==null)return null;
    return '#${color.value.toRadixString(16).substring(2).padLeft(6, '0')}';
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:book_search/common/utils/styles/colors/app_colors.dart';


class AppBarStates {
  static AppBar empty({Color? backgroundColor}) => AppBar(
    elevation: 0,
    backgroundColor: backgroundColor ?? Colors.transparent,
    iconTheme: IconThemeData(color: mainBlack),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      // тёмные иконки на светлом фоне
      systemNavigationBarColor: Colors.transparent,
      // фон навигационной панели
      systemNavigationBarIconBrightness: Brightness.dark, // тёмные иконки
    ),
  );

  static AppBar titled(Text title,) => AppBar(
    title: title,
    centerTitle: true,
    backgroundColor: mainBlack,
    iconTheme: IconThemeData(color: mainWhite),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      // тёмные иконки на светлом фоне
      systemNavigationBarColor: Colors.transparent,
      // фон навигационной панели
      systemNavigationBarIconBrightness: Brightness.dark, // тёмные иконки
    ),
  );

  static AppBar titledWithAction(
    String title,
    List<Widget> actions, {
    Color? backgroundColor,
  }) => AppBar(
    elevation: 0,
    actions: actions,
    title: Text(title),
    centerTitle: true,
    backgroundColor: backgroundColor ?? Colors.transparent,
    iconTheme: IconThemeData(color: mainBlack),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      // тёмные иконки на светлом фоне
      systemNavigationBarColor: Colors.transparent,
      // фон навигационной панели
      systemNavigationBarIconBrightness: Brightness.dark, // тёмные иконки
    ),
  );

  static AppBar action(List<Widget> actions, {Color? backgroundColor}) =>
      AppBar(
        elevation: 0,
        actions: actions,
        backgroundColor: backgroundColor ?? Colors.transparent,
        iconTheme: IconThemeData(color: mainBlack),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          // тёмные иконки на светлом фоне
          systemNavigationBarColor: Colors.transparent,
          // фон навигационной панели
          systemNavigationBarIconBrightness: Brightness.dark, // тёмные иконки
        ),
      );

  static AppBar titledWithLeading(Text title, Widget leading) => AppBar(
    elevation: 0,
    leading: leading,
    title: title,
    centerTitle: true,
    backgroundColor: mainBlack,
    iconTheme: IconThemeData(color: mainWhite),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      // тёмные иконки на светлом фоне
      systemNavigationBarColor: Colors.transparent,
      // фон навигационной панели
      systemNavigationBarIconBrightness: Brightness.dark, // тёмные иконки
    ),
  );
}

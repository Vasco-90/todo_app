import 'package:flutter/material.dart';
import 'package:todo_app/common/theme/todo_colors.dart';

final themeLight = ThemeData(
  scaffoldBackgroundColor: TodoColors.backgroundColor,
  appBarTheme: const AppBarTheme(color: TodoColors.appBarBackgroundColor),
);

final themeDark = ThemeData(
  scaffoldBackgroundColor: TodoDarkColors.backgroundColor,
  appBarTheme: const AppBarTheme(color: TodoDarkColors.appBarBackgroundColor),
);

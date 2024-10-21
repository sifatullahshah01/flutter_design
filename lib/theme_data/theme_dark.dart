import 'package:flutter/material.dart';
import 'package:remote_ui/theme_data/theme_colors.dart';

class ThemeDark {
  static ThemeData themeDark = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: ThemeDarkColors.primaryColor,
      brightness: Brightness.dark,
      primary: ThemeDarkColors.primaryColor,
      onPrimary: ThemeDarkColors.primaryColor,
      onPrimaryContainer: ThemeDarkColors.primaryColor,
      onSecondary: ThemeDarkColors.primaryColor,
      onSecondaryContainer: ThemeDarkColors.primaryColor,
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(),
    textTheme: const TextTheme(
      displayLarge: TextStyle(),
      displayMedium: TextStyle(),
      displaySmall: TextStyle(),
      headlineLarge: TextStyle(),
      headlineMedium: TextStyle(),
      headlineSmall: TextStyle(),
      titleLarge: TextStyle(),
      titleMedium: TextStyle(),
      titleSmall: TextStyle(),
      bodyLarge: TextStyle(),
      bodyMedium: TextStyle(),
      bodySmall: TextStyle(),
      labelLarge: TextStyle(),
      labelMedium: TextStyle(),
      labelSmall: TextStyle(),
    ),
  );
}

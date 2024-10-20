import 'package:flutter/material.dart';
import 'package:flutter_design/theme_data/theme_colors.dart';

class ThemeLight {
  static ThemeData themeDark = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: ThemeLightColors.primaryColor,
        brightness: Brightness.dark,
        primary: ThemeLightColors.primaryColor,
        onPrimary: ThemeLightColors.primaryColor,
        onPrimaryContainer: ThemeLightColors.primaryColor,
        onSecondary: ThemeLightColors.primaryColor,
        onSecondaryContainer: ThemeLightColors.primaryColor,
      ),
      useMaterial3: true,
      appBarTheme: AppBarTheme(),
      textTheme: TextTheme(
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
      ));
}

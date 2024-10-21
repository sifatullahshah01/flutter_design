import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme_data/theme_colors.dart';

class ThemeLight {
  static ThemeData themeLight = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: ThemeLightColors.primaryColor,
      brightness: Brightness.light,
      primary: ThemeLightColors.primaryColor,
      onPrimary: ThemeLightColors.onPrimary,
      secondary: ThemeLightColors.secondaryColor,
      onSecondary: ThemeLightColors.onSecondary,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: ThemeLightColors.primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: ThemeLightColors.primaryColor,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: ThemeLightColors.onPrimary,
        systemNavigationBarColor: ThemeLightColors.onPrimary,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      titleTextStyle: const TextStyle(
        color: ThemeLightColors.onPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: GoogleFonts.interTextTheme(
      const TextTheme(
        displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: ThemeLightColors.onPrimary),
        displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: ThemeLightColors.onPrimary),
        displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: ThemeLightColors.onPrimary),
        headlineLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: ThemeLightColors.onPrimary),
        headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: ThemeLightColors.onPrimary),
        headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: ThemeLightColors.onPrimary),
        titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: ThemeLightColors.onPrimary),
        titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: ThemeLightColors.onPrimary),
        titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: ThemeLightColors.onPrimary),
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ThemeLightColors.onPrimary),
        bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ThemeLightColors.onPrimary),
        bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ThemeLightColors.onPrimary),
        labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ThemeLightColors.onPrimary),
        labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ThemeLightColors.onPrimary),
        labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: ThemeLightColors.onPrimary),
      ),
    ),
  );
}

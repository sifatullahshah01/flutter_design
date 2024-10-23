import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme_data/theme_colors.dart';

class ThemeDark {
  static ThemeData themeDark = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: ThemeDarkColors.primary,
      brightness: Brightness.dark,
      primary: ThemeDarkColors.primary,
      onPrimary: ThemeDarkColors.onPrimary,
      secondary: ThemeDarkColors.secondaryColor,
      onSecondary: ThemeDarkColors.onSecondary,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: ThemeDarkColors.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: ThemeDarkColors.primary,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: ThemeDarkColors.primary,
        systemNavigationBarColor: ThemeDarkColors.onPrimary,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      titleTextStyle: const TextStyle(
        color: ThemeDarkColors.onPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: GoogleFonts.interTextTheme(
      const TextTheme(
        displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: ThemeDarkColors.onPrimary),
        displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: ThemeDarkColors.onPrimary),
        displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: ThemeDarkColors.onPrimary),
        headlineLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: ThemeDarkColors.onPrimary),
        headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: ThemeDarkColors.onPrimary),
        headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: ThemeDarkColors.onPrimary),
        titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: ThemeDarkColors.onPrimary),
        titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: ThemeDarkColors.onPrimary),
        titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: ThemeDarkColors.onPrimary),
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ThemeDarkColors.onPrimary),
        bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ThemeDarkColors.onPrimary),
        bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ThemeDarkColors.onPrimary),
        labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ThemeDarkColors.onPrimary),
        labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ThemeDarkColors.onPrimary),
        labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: ThemeDarkColors.onPrimary),
      ),
    ),
  );
}

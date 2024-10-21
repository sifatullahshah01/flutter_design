import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    appBarTheme: const AppBarTheme(
      backgroundColor: ThemeDarkColors.primaryColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: ThemeDarkColors.primaryColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: ThemeLightColors.primaryColor,

    // Apply the Inter font with custom font sizes and text color (B4B4B4)
    textTheme: GoogleFonts.interTextTheme(
      const TextTheme(
        displayLarge: TextStyle(
          fontSize: 32, // Large display text
          fontWeight: FontWeight.bold,
          color: Color(0xFFB4B4B4), // Applying the #B4B4B4 text color
        ),
        displayMedium: TextStyle(
          fontSize: 28, // Medium display text
          fontWeight: FontWeight.bold,
          color: Color(0xFFB4B4B4),
        ),
        displaySmall: TextStyle(
          fontSize: 24, // Small display text
          fontWeight: FontWeight.w600,
          color: Color(0xFFB4B4B4),
        ),
        headlineLarge: TextStyle(
          fontSize: 22, // Headline large
          fontWeight: FontWeight.w600,
          color: Color(0xFFB4B4B4),
        ),
        headlineMedium: TextStyle(
          fontSize: 20, // Headline medium
          fontWeight: FontWeight.w500,
          color: Color(0xFFB4B4B4),
        ),
        headlineSmall: TextStyle(
          fontSize: 18, // Headline small
          fontWeight: FontWeight.w500,
          color: Color(0xFFB4B4B4),
        ),
        titleLarge: TextStyle(
          fontSize: 20, // Large title text
          fontWeight: FontWeight.bold,
          color: Color(0xFFB4B4B4),
        ),
        titleMedium: TextStyle(
          fontSize: 18, // Medium title text
          fontWeight: FontWeight.w600,
          color: Color(0xFFB4B4B4),
        ),
        titleSmall: TextStyle(
          fontSize: 16, // Small title text
          fontWeight: FontWeight.w600,
          color: Color(0xFFB4B4B4),
        ),
        bodyLarge: TextStyle(
          fontSize: 16, // Large body text
          fontWeight: FontWeight.w400,
          color: Color(0xFFB4B4B4),
        ),
        bodyMedium: TextStyle(
          fontSize: 14, // Medium body text
          fontWeight: FontWeight.w400,
          color: Color(0xFFB4B4B4),
        ),
        bodySmall: TextStyle(
          fontSize: 12, // Small body text
          fontWeight: FontWeight.w400,
          color: Color(0xFFB4B4B4),
        ),
        labelLarge: TextStyle(
          fontSize: 14, // Large label text
          fontWeight: FontWeight.w500,
          color: Color(0xFFB4B4B4),
        ),
        labelMedium: TextStyle(
          fontSize: 12, // Medium label text
          fontWeight: FontWeight.w400,
          color: Color(0xFFB4B4B4),
        ),
        labelSmall: TextStyle(
          fontSize: 10, // Small label text
          fontWeight: FontWeight.w400,
          color: Color(0xFFB4B4B4),
        ),
      ),
    ),
  );
}

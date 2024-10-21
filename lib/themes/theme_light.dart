import 'package:flutter/material.dart';
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
    appBarTheme: const AppBarTheme(
      backgroundColor: ThemeLightColors.primaryColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: ThemeLightColors.primaryColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    // Apply the Inter font with custom font sizes and text color (B4B4B4)
    textTheme: GoogleFonts.interTextTheme(
      const TextTheme(
        displayLarge: TextStyle(
          fontSize: 32, // Large display text
          fontWeight: FontWeight.bold,
          color: Color(0xff1F1F2B), // Applying the #B4B4B4 text color
        ),
        displayMedium: TextStyle(
          fontSize: 28, // Medium display text
          fontWeight: FontWeight.bold,
          color: Color(0xff1F1F2B),
        ),
        displaySmall: TextStyle(
          fontSize: 24, // Small display text
          fontWeight: FontWeight.w600,
          color: Color(0xff1F1F2B),
        ),
        headlineLarge: TextStyle(
          fontSize: 22, // Headline large
          fontWeight: FontWeight.w600,
          color: Color(0xff1F1F2B),
        ),
        headlineMedium: TextStyle(
          fontSize: 20, // Headline medium
          fontWeight: FontWeight.w500,
          color: Color(0xff1F1F2B),
        ),
        headlineSmall: TextStyle(
          fontSize: 18, // Headline small
          fontWeight: FontWeight.w500,
          color: Color(0xff1F1F2B),
        ),
        titleLarge: TextStyle(
          fontSize: 20, // Large title text
          fontWeight: FontWeight.bold,
          color: Color(0xff1F1F2B),
        ),
        titleMedium: TextStyle(
          fontSize: 18, // Medium title text
          fontWeight: FontWeight.w600,
          color: Color(0xff1F1F2B),
        ),
        titleSmall: TextStyle(
          fontSize: 16, // Small title text
          fontWeight: FontWeight.w600,
          color: Color(0xff1F1F2B),
        ),
        bodyLarge: TextStyle(
          fontSize: 16, // Large body text
          fontWeight: FontWeight.w400,
          color: Color(0xff1F1F2B),
        ),
        bodyMedium: TextStyle(
          fontSize: 14, // Medium body text
          fontWeight: FontWeight.w400,
          color: Color(0xff1F1F2B),
        ),
        bodySmall: TextStyle(
          fontSize: 12, // Small body text
          fontWeight: FontWeight.w400,
          color: Color(0xff1F1F2B),
        ),
        labelLarge: TextStyle(
          fontSize: 14, // Large label text
          fontWeight: FontWeight.w500,
          color: Color(0xff1F1F2B),
        ),
        labelMedium: TextStyle(
          fontSize: 12, // Medium label text
          fontWeight: FontWeight.w400,
          color: Color(0xff1F1F2B),
        ),
        labelSmall: TextStyle(
          fontSize: 10, // Small label text
          fontWeight: FontWeight.w400,
          color: Color(0xff1F1F2B),
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';

class ThemeLightColors {
  static const primaryColor = Color(0xFFEFEFEF); // Primary color for light theme
  static const onPrimary = Color(0xffFFFFFF);
  static const secondaryColor = Color(0xff1F1F2B); // Accent color for light theme
  static const onSecondary = Color(0xff0A0A0A);
  static const activeColour = Color(0xffFE6247);

  LinearGradient buttonsLight = const LinearGradient(
    colors: [
      Color(0xffFE6247),
      Color(0xffFF8737),
    ],
  );
}

class ThemeDarkColors {
  static const primaryColor = Color(0xff14141A); // Primary color for dark theme
  static const onPrimary = Color(0xff1F1F2B);
  static const secondaryColor = Color(0xFFB4B4B4); // Accent color for dark theme
  static const onSecondary = Color(0xffFFFFFF);
  static const mainShadow = Color(0xffFF8737);
  static const navbarBackground = Color(0xff1F1F2B);

  LinearGradient buttonsDark = const LinearGradient(
    colors: [
      Color(0xffFE6247),
      Color(0xffFF8737),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:remote_ui/views/screen_remote_view.dart';
import 'package:remote_ui/themes/theme_dark.dart';
import 'package:remote_ui/themes/theme_light.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Remote',
      theme: ThemeLight.themeLight,
      darkTheme: ThemeDark.themeDark,
      themeMode: ThemeMode.dark,
      home: const ScreenRemoteView(),
    );
  }
}

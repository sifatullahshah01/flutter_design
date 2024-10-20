import 'package:flutter/material.dart';
import 'package:flutter_design/screen_remote_view.dart';
import 'package:flutter_design/theme_data/theme_dark.dart';
import 'package:flutter_design/theme_data/theme_light.dart';

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
      title: 'Flutter Demo',
      theme: ThemeLight.themeDark,
      darkTheme: ThemeDark.themeDark,
      themeMode: ThemeMode.dark,
      home: ScreenRemoteView(),
    );
  }
}

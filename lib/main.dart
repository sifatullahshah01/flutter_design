import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_ui/AppRoutes/app_routes.dart';
import 'package:remote_ui/views/main_all_views.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Remote',
      theme: ThemeLight.themeLight,
      darkTheme: ThemeDark.themeDark,
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.splash,
      getPages: AppRoutes.routes,
    );
  }
}

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:remote_ui/views/main_all_views.dart';
import 'package:remote_ui/views/splash_screen.dart';

import '../views/pages/apps.dart';
import '../views/pages/casting.dart';
import '../views/pages/mirroring.dart';
import '../views/pages/remote.dart';
import '../views/pages/settings.dart';

class AppRoutes {
  static const splash = '/splash';
  static const main = '/main';

  // Customer Bottom bar
  static const remote = '/remote';
  static const mirroring = '/mirroring';
  static const apps = '/apps';
  static const casting = '/casting';
  static const settings = '/settings';

  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: main,
      page: () => const MainScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: remote,
      page: () => RemoteView(), // Ensure this is your correct view
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: mirroring,
      page: () => const MirroringView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: apps,
      page: () => AppsView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: casting,
      page: () => CastingView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: settings,
      page: () => SettingsView(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
  ];
}

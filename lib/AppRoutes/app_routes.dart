import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../views/splash_screen.dart';

class AppRoutes {
  static const splash = '/splash';
  static const home = '/home';

  // Customer Bottom bar
  static String customerBottomNav = "/customerBottomNav";

  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    )
  ];
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:remote_ui/views/pages/apps.dart';
import 'package:remote_ui/views/pages/casting.dart';
import 'package:remote_ui/views/pages/mirroring.dart';
import 'package:remote_ui/views/pages/remote.dart';
import 'package:remote_ui/views/pages/settings.dart';
import '../controllers/navigation_controller.dart';
import '../res/assets/assets.dart';
import '../theme_data/theme_colors.dart';
import '../utils/bottom_nav_components/curved_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController = Get.put(NavigationController());

    return Scaffold(
      body: Obx(
        () {
          switch (navigationController.currentIndex.value) {
            case 0:
              return RemoteView();
            case 1:
              return const MirroringView();
            case 2:
              return AppsView();
            case 3:
              return CastingView();
            case 4:
              return SettingsView();
            default:
              return RemoteView(); // Default to RemoteView
          }
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: navigationController.currentIndex.value,
        items: <Widget>[
          SvgPicture.asset(
            Assets.remote,
            height: 19,
            color: navigationController.currentIndex.value == 0 ? ThemeLightColors.activeColour : Colors.grey, // Apply active color for index 0
          ),
          SvgPicture.asset(
            Assets.mirroring,
            height: 19,
            color: navigationController.currentIndex.value == 1 ? ThemeLightColors.activeColour : Colors.grey, // Apply active color for index 1
          ),
          SvgPicture.asset(
            Assets.apps,
            height: 19,
            color: navigationController.currentIndex.value == 2 ? ThemeLightColors.activeColour : Colors.grey, // Apply active color for index 2
          ),
          SvgPicture.asset(
            Assets.casting,
            height: 19,
            color: navigationController.currentIndex.value == 3 ? ThemeLightColors.activeColour : Colors.grey, // Apply active color for index 3
          ),
          SvgPicture.asset(
            Assets.setting,
            height: 19,
            color: navigationController.currentIndex.value == 4 ? ThemeLightColors.activeColour : Colors.grey, // Apply active color for index 4
          ),
        ],
        color: ThemeDarkColors.onPrimary,
        buttonBackgroundColor: ThemeDarkColors.navbarBackground,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        activeColor: ThemeLightColors.activeColour,
        onTap: (index) {
          navigationController.changeIndex(index);
          setState(() {});
        },
        titles: const [
          'Remote',
          'Mirroring',
          'Apps',
          'Casting',
          'Setting',
        ],
      ),
    );
  }
}

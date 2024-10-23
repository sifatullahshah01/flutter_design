import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remote_ui/res/assets/assets.dart';
import '../../theme_data/theme_colors.dart';

class RemoteView extends StatefulWidget {
  const RemoteView({super.key});

  @override
  State<RemoteView> createState() => _RemoteViewState();
}

class _RemoteViewState extends State<RemoteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeDarkColors.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Wrap each widget with Expanded to make sure they have equal size
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: customCircleButton(
                  icon: SvgPicture.asset(Assets.power),
                  background: ThemeDarkColors.onPrimary,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.connectTv,
                    height: 8.2,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Connect to TV',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).primaryColorLight,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(
                    Assets.dropDowen,
                    height: 8.2,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: customCircleButton(
                  icon: SvgPicture.asset(
                    Assets.ads,
                    height: 23,
                  ),
                  background: ThemeDarkColors.mainShadow,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: customVolChButtons(
                    tittle: 'VOL',
                    topIcon: Assets.volumeUp,
                    topIconButton: () {
                      log('volume Up');
                    },
                    bottomIcon: Assets.volumeDowen,
                    bottomIconButton: () {
                      log('volume down');
                    },
                    textStyles: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).primaryColorLight,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: customFunctionsButtons(
                              textStyles: Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                  ),
                              tittle: 'Mute',
                              icon: Assets.mute,
                              iconButtonTap: () {},
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: customFunctionsButtons(
                              textStyles: Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                  ),
                              tittle: 'Exit',
                              icon: Assets.exit,
                              iconButtonTap: () {},
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: customFunctionsButtons(
                              textStyles: Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                  ),
                              tittle: 'Back',
                              icon: Assets.back,
                              iconButtonTap: () {},
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: customFunctionsButtons(
                              textStyles: Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                  ),
                              tittle: 'Home',
                              icon: Assets.home,
                              iconButtonTap: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: customVolChButtons(
                    tittle: 'CH',
                    topIcon: Assets.arrowUp,
                    topIconButton: () {
                      log('channel Up');
                    },
                    bottomIcon: Assets.arrowDown,
                    bottomIconButton: () {
                      log('channel down');
                    },
                    textStyles: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).primaryColorLight,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Volume/Channel buttons widget
Widget customVolChButtons({
  required String tittle,
  required String topIcon,
  required TextStyle textStyles,
  required VoidCallback? topIconButton,
  required String bottomIcon,
  required VoidCallback? bottomIconButton,
}) {
  return Container(
    height: 120,
    width: double.infinity,
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
    decoration: BoxDecoration(
      color: ThemeDarkColors.onPrimary,
      border: Border.all(
        color: ThemeDarkColors.primary,
        width: 0.05,
      ),
      borderRadius: BorderRadius.circular(5.0),
      boxShadow: [
        BoxShadow(
          color: const Color(0xffFFFFFF).withOpacity(0.35),
          offset: const Offset(0, 0),
          blurRadius: 1.7,
          spreadRadius: 0,
        )
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: topIconButton,
          child: SvgPicture.asset(
            topIcon,
            width: 13,
          ),
        ),
        Text(
          tittle,
          style: textStyles,
        ),
        GestureDetector(
          onTap: bottomIconButton,
          child: SvgPicture.asset(
            bottomIcon,
            width: 13,
          ),
        ),
      ],
    ),
  );
}

// Custom circle button widget
Widget customCircleButton({required Widget icon, required Color background}) {
  return Container(
    decoration: BoxDecoration(
      color: background,
      shape: BoxShape.circle,
      border: Border.all(color: ThemeDarkColors.primary, width: 0.05),
      boxShadow: [
        BoxShadow(
          color: const Color(0xffFFFFFF).withOpacity(0.35),
          offset: const Offset(0, 0),
          blurRadius: 1.7,
          spreadRadius: 0,
        )
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: IconTheme(
        data: const IconThemeData(
          color: ThemeDarkColors.primary,
        ),
        child: icon,
      ),
    ),
  );
}

// Custom function buttons widget
Widget customFunctionsButtons({
  String? tittle,
  required TextStyle textStyles,
  required String icon,
  required VoidCallback? iconButtonTap,
}) {
  return Container(
    height: 49,
    width: double.infinity,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: ThemeDarkColors.onPrimary,
      border: Border.all(
        color: ThemeDarkColors.primary,
        width: 0.05,
      ),
      borderRadius: BorderRadius.circular(5.0),
      boxShadow: [
        BoxShadow(
          color: const Color(0xffFFFFFF).withOpacity(0.35),
          offset: const Offset(0, 0),
          blurRadius: 1.7,
          spreadRadius: 0,
        )
      ],
    ),
    child: Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: iconButtonTap,
            child: SvgPicture.asset(
              icon,
              height: 16,
              alignment: Alignment.center,
            ),
          ),
        ),
        const SizedBox(width: 5),
        if (tittle != null)
          Expanded(
            child: Text(
              tittle,
              style: textStyles,
            ),
          ),
      ],
    ),
  );
}

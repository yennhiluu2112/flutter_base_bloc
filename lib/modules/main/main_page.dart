import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/themes/app_colors.dart';
import 'package:flutter_base_firebase/routes/app_router.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        SettingsRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            selectedItemColor: AppColors.primary600,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: 'Main.Home'.tr(),
                icon: const Icon(Icons.home_outlined),
                activeIcon: const Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Main.Settings'.tr(),
                icon: const Icon(Icons.settings_outlined),
                activeIcon: const Icon(Icons.settings),
              ),
            ],
          ),
        );
      },
    );
  }
}

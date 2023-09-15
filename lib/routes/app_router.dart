import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/modules/intro/intro_page.dart';

import '../global/models/song/song.dart';
import '../modules/login/login_page.dart';
import '../modules/main/home/home_page.dart';
import '../modules/main/main_page.dart';
import '../modules/main/profile/profile_page.dart';
import '../modules/main/settings/settings_page.dart';
import '../modules/main/singer_detail/singer_detail_page.dart';
import '../modules/main/song_detail/song_detail_page.dart';
import '../modules/sign_up/sign_up_page.dart';
import '../modules/splash/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: SplashRoute.page, initial: true),
      AutoRoute(page: IntroRoute.page),
      AutoRoute(page: LoginRoute.page),
      AutoRoute(page: SignUpRoute.page),
      AutoRoute(
        page: MainRoute.page,
        children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: SettingsRoute.page),
        ],
      ),
      AutoRoute(page: SongDetailRoute.page),
      AutoRoute(page: SingerDetailRoute.page),
      AutoRoute(page: ProfileRoute.page),
    ];
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter_base_firebase/modules/intro/intro_page.dart';

import '../modules/login/login_page.dart';
import '../modules/sign_up/sign_up_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: IntroRoute.page, initial: true),
      AutoRoute(page: LoginRoute.page),
      AutoRoute(page: SignUpRoute.page),
    ];
  }
}

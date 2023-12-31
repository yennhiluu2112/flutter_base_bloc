// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    IntroRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IntroPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SongDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SongDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SongDetailPage(
          key: args.key,
          songs: args.songs,
          initialIndex: args.initialIndex,
        ),
      );
    },
    SingerDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SingerDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SingerDetailPage(
          id: args.id,
          key: args.key,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
  };
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IntroPage]
class IntroRoute extends PageRouteInfo<void> {
  const IntroRoute({List<PageRouteInfo>? children})
      : super(
          IntroRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntroRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SongDetailPage]
class SongDetailRoute extends PageRouteInfo<SongDetailRouteArgs> {
  SongDetailRoute({
    Key? key,
    required List<Song> songs,
    int initialIndex = 0,
    List<PageRouteInfo>? children,
  }) : super(
          SongDetailRoute.name,
          args: SongDetailRouteArgs(
            key: key,
            songs: songs,
            initialIndex: initialIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'SongDetailRoute';

  static const PageInfo<SongDetailRouteArgs> page =
      PageInfo<SongDetailRouteArgs>(name);
}

class SongDetailRouteArgs {
  const SongDetailRouteArgs({
    this.key,
    required this.songs,
    this.initialIndex = 0,
  });

  final Key? key;

  final List<Song> songs;

  final int initialIndex;

  @override
  String toString() {
    return 'SongDetailRouteArgs{key: $key, songs: $songs, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [SingerDetailPage]
class SingerDetailRoute extends PageRouteInfo<SingerDetailRouteArgs> {
  SingerDetailRoute({
    required String id,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SingerDetailRoute.name,
          args: SingerDetailRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SingerDetailRoute';

  static const PageInfo<SingerDetailRouteArgs> page =
      PageInfo<SingerDetailRouteArgs>(name);
}

class SingerDetailRouteArgs {
  const SingerDetailRouteArgs({
    required this.id,
    this.key,
  });

  final String id;

  final Key? key;

  @override
  String toString() {
    return 'SingerDetailRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

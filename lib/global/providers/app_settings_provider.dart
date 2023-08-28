import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/enum/app_locale.dart';
import 'package:flutter_base_firebase/global/enum/app_theme.dart';
import 'package:flutter_base_firebase/global/models/app_settings/app_settings.dart';
import 'package:flutter_base_firebase/services/hive_service.dart';
import 'package:get_it/get_it.dart';

class AppSettingsProvider extends ChangeNotifier {
  final _hiveService = GetIt.instance.get<HiveService>();
  late AppSettings appSettings;

  AppSettingsProvider() {
    appSettings = _hiveService.getAppSettings();
  }

  ThemeData get themeData => appSettings.theme.toThemeData();

  Locale get localeData => appSettings.locale.toLocale();

  void changeTheme(AppTheme theme) {
    _hiveService.saveTheme(theme);
    appSettings = _hiveService.getAppSettings();
    notifyListeners();
  }

  void changeLocale(AppLocale locale) {
    _hiveService.saveLocale(locale);
    appSettings = _hiveService.getAppSettings();
    notifyListeners();
  }

  void saveFirstLaunch([bool isFirsLaunch = false]) {
    _hiveService.saveFirstLaunch(isFirsLaunch);
    appSettings = _hiveService.getAppSettings();
    notifyListeners();
  }
}

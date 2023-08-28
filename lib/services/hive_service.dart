import 'dart:convert';

import 'package:flutter_base_firebase/global/enum/app_locale.dart';
import 'package:flutter_base_firebase/global/enum/app_theme.dart';
import 'package:flutter_base_firebase/global/utils/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../global/models/app_settings/app_settings.dart';

abstract class HiveService {
  AppSettings getAppSettings();
  Future<void> saveTheme(AppTheme appTheme);
  Future<void> saveLocale(AppLocale appLocale);
  Future<void> saveFirstLaunch([bool value = true]);
  Future<AppSettings> resetAppSettings();
}

class HiveServiceImpl extends HiveService {
  final _box = Hive.box(Constants.hiveDataBox);

  @override
  AppSettings getAppSettings() {
    final savedAppSettings = _box.get(Constants.hiveAppSettingsKey);
    if (savedAppSettings != null) {
      return AppSettings.fromJson(jsonDecode(savedAppSettings));
    }
    return AppSettings();
  }

  @override
  Future<AppSettings> resetAppSettings() async {
    final defaultData = AppSettings();
    await _box.put(Constants.hiveAppSettingsKey, jsonEncode(defaultData));
    return defaultData;
  }

  @override
  Future<void> saveFirstLaunch([value = true]) {
    final savedData = getAppSettings();
    return _box.put(
      Constants.hiveAppSettingsKey,
      jsonEncode(
        savedData.copyWith(isFirstLaunch: value),
      ),
    );
  }

  @override
  Future<void> saveLocale(AppLocale appLocale) {
    final savedData = getAppSettings();
    return _box.put(
      Constants.hiveAppSettingsKey,
      jsonEncode(
        savedData.copyWith(locale: appLocale),
      ),
    );
  }

  @override
  Future<void> saveTheme(AppTheme appTheme) {
    final savedData = getAppSettings();
    return _box.put(
      Constants.hiveAppSettingsKey,
      jsonEncode(
        savedData.copyWith(theme: appTheme),
      ),
    );
  }
}

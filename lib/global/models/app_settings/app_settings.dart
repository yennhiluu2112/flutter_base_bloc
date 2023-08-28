import 'package:flutter_base_firebase/global/enum/app_locale.dart';
import 'package:flutter_base_firebase/global/enum/app_theme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

@freezed
class AppSettings with _$AppSettings {
  factory AppSettings({
    @Default(AppLocale.auto) AppLocale locale,
    @Default(AppTheme.auto) AppTheme theme,
    @Default(true) bool isFirstLaunch,
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}

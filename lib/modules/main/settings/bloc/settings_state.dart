part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    Failure? failure,
    @Default(false) bool isShowLoading,
    @Default(false) bool isSignOutSucess,
  }) = _SettingsState;
}

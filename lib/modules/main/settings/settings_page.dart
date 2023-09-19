import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/di/di_setup.dart';
import 'package:flutter_base_firebase/global/widgets/base_page.dart';
import 'package:flutter_base_firebase/global/widgets/label.dart';
import 'package:flutter_base_firebase/global/widgets/loading_overlay.dart';
import 'package:flutter_base_firebase/modules/main/settings/bloc/settings_bloc.dart';
import 'package:flutter_base_firebase/modules/main/settings/widgets/settings_tile.dart';
import 'package:flutter_base_firebase/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../global/enum/app_locale.dart';
import '../../../global/enum/app_theme.dart';
import '../../../global/providers/app_settings_provider.dart';

@RoutePage()
class SettingsPage extends BasePageScreen {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends BasePageScreenState<SettingsPage> {
  late final SettingsBloc _settingsBloc;

  @override
  void initState() {
    _settingsBloc = getIt<SettingsBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appSettingProvider = context.read<AppSettingsProvider>();

    return BlocProvider(
      create: (_) => _settingsBloc,
      child: MultiBlocListener(
        listeners: [
          BlocListener<SettingsBloc, SettingsState>(
            listenWhen: (previous, current) => current.failure != null,
            listener: (context, state) {
              handleError(state.failure!);
            },
          ),
          BlocListener<SettingsBloc, SettingsState>(
            listenWhen: (previous, current) => current.isSignOutSucess,
            listener: (context, state) {
              context.router.replaceAll([const LoginRoute()]);
            },
          ),
        ],
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return LoadingOverlay(
              loading: state.isShowLoading,
              child: Scaffold(
                appBar: AppBar(
                  title: Text('Settings.Title'.tr()),
                ),
                body: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    Label('Settings.AboutApp'.tr()),
                    SettingsTile(
                      icon: Icons.language,
                      title: 'Settings.ChangeLanguage'.tr(),
                      onTap: () {
                        bool isEnUs = appSettingProvider.appSettings.locale ==
                            AppLocale.enUs;
                        appSettingProvider.changeLocale(
                          isEnUs ? AppLocale.viVN : AppLocale.enUs,
                          context,
                        );
                      },
                    ),
                    const SizedBox(height: 8),
                    SettingsTile(
                      icon: Icons.light_mode_outlined,
                      title: 'Settings.ChangeTheme'.tr(),
                      onTap: () {
                        final isLight = appSettingProvider.appSettings.theme ==
                            AppTheme.light;
                        appSettingProvider.changeTheme(
                          isLight ? AppTheme.dark : AppTheme.light,
                        );
                      },
                    ),
                    const Divider(),
                    Label('Settings.Account'.tr()),
                    SettingsTile(
                      icon: Icons.account_circle_outlined,
                      title: 'Settings.Profile'.tr(),
                      onTap: () {
                        context.router.push(const ProfileRoute());
                      },
                    ),
                    const SizedBox(height: 8),
                    SettingsTile(
                      icon: Icons.logout,
                      title: 'Settings.LogOut'.tr(),
                      onTap: () {
                        _settingsBloc.add(const SettingsEvent.signOut());
                      },
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/di/di_setup.dart';
import 'package:flutter_base_firebase/global/widgets/base_page.dart';
import 'package:flutter_base_firebase/global/widgets/loading_overlay.dart';
import 'package:flutter_base_firebase/modules/main/settings/bloc/settings_bloc.dart';
import 'package:flutter_base_firebase/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  title: const Text('Settings'),
                ),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _settingsBloc.add(const SettingsEvent.signOut());
                        },
                        child: const Text('Log out'),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/di/di_setup.dart';
import 'package:flutter_base_firebase/global/widgets/base_page.dart';
import 'package:flutter_base_firebase/global/widgets/loading_overlay.dart';
import 'package:flutter_base_firebase/modules/main/profile/bloc/profile_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../global/widgets/label.dart';

@RoutePage()
class ProfilePage extends BasePageScreen {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends BasePageScreenState<ProfilePage> {
  late final ProfileBloc _profileBloc;

  @override
  void initState() {
    _profileBloc = getIt<ProfileBloc>();
    _profileBloc.add(const ProfileEvent.getUser());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _profileBloc,
      child: MultiBlocListener(
        listeners: [
          BlocListener<ProfileBloc, ProfileState>(
            listenWhen: (previous, current) => current.failure != null,
            listener: (context, state) {
              handleError(state.failure!);
            },
          ),
        ],
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            final user = state.user;
            if (user == null) {
              return const SizedBox();
            }
            return LoadingOverlay(
              loading: state.isShowLoading,
              child: Scaffold(
                appBar: AppBar(
                  title: Text(
                    'Settings.Profile'.tr(),
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ListView(
                          children: [
                            SizedBox.square(
                              dimension: 90,
                              child: CircleAvatar(
                                child: CachedNetworkImage(
                                  imageUrl: user.photoURL ?? '',
                                  width: 90,
                                  height: 90,
                                  fit: BoxFit.cover,
                                  errorWidget: (_, __, ___) => const Icon(
                                    Icons.account_circle,
                                    size: 50,
                                  ),
                                ),
                              ),
                            ),
                            Label('Login.Email'.tr()),
                            FormBuilderTextField(
                              name: 'email',
                              initialValue: user.email,
                              enabled: false,
                            ),
                            const Label('Name'),
                            FormBuilderTextField(
                              name: 'displayName',
                              initialValue: user.displayName,
                            ),
                            const Label('Phone Number'),
                            FormBuilderTextField(
                              name: 'phoneNumber',
                              initialValue: user.phoneNumber,
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Update'),
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

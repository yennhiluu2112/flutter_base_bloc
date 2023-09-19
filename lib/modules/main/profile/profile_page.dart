import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/di/di_setup.dart';
import 'package:flutter_base_firebase/global/widgets/base_page.dart';
import 'package:flutter_base_firebase/global/widgets/loading_overlay.dart';
import 'package:flutter_base_firebase/modules/main/profile/bloc/profile_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../global/widgets/label.dart';
import 'widgets/image_picker_field.dart';

@RoutePage()
class ProfilePage extends BasePageScreen {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends BasePageScreenState<ProfilePage> {
  late final ProfileBloc _profileBloc;
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    _profileBloc = getIt<ProfileBloc>();
    _profileBloc.add(const ProfileEvent.getUser());
    super.initState();
  }

  void updateProfile() {
    FocusManager.instance.primaryFocus?.unfocus();

    if (_formKey.currentState?.saveAndValidate() == true) {
      final data = _formKey.currentState!.value;
      _profileBloc.add(
        ProfileEvent.updateUser(data['displayName'], data['photoUrl']),
      );
    }
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
                        child: FormBuilder(
                          key: _formKey,
                          child: ListView(
                            children: [
                              FormBuilderField(
                                name: 'photoUrl',
                                initialValue: user.photoURL,
                                builder: (field) {
                                  return ImagePickerField(
                                    didChangeField: field.didChange,
                                    field: field,
                                  );
                                },
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
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: updateProfile,
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

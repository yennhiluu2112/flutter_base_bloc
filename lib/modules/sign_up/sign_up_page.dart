import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/di/di_setup.dart';
import 'package:flutter_base_firebase/global/widgets/loading_overlay.dart';
import 'package:flutter_base_firebase/modules/sign_up/bloc/sign_up_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../global/models/request/sign_up_request/sign_up_request.dart';
import '../../global/widgets/label.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  late final SignUpBloc _signUpBloc;

  @override
  void initState() {
    _signUpBloc = getIt<SignUpBloc>();
    super.initState();
  }

  void signUp() {
    FocusManager.instance.primaryFocus?.unfocus();

    if (_formKey.currentState?.saveAndValidate() == true) {
      final data = _formKey.currentState!.value;
      _signUpBloc.add(
        SignUpEvent.signUp(
          SignUpRequest(
            email: data['email'],
            password: data['password'],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _signUpBloc,
      child: MultiBlocListener(
        listeners: [
          BlocListener<SignUpBloc, SignUpState>(
            listenWhen: (previous, current) => current.failure != null,
            listener: (context, state) {
              if (state.failure != null) {
                print(state.failure);
              }
            },
          ),
          BlocListener<SignUpBloc, SignUpState>(
            listenWhen: (previous, current) => current.isSignUpSucess,
            listener: (context, state) {
              context.router.pop();
            },
          )
        ],
        child: BlocBuilder<SignUpBloc, SignUpState>(
          builder: (context, state) {
            return LoadingOverlay(
              loading: state.isShowLoading,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Sign Up'),
                ),
                body: FormBuilder(
                  key: _formKey,
                  child: ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      const Label('Email'),
                      FormBuilderTextField(name: 'email'),
                      const Label('Password'),
                      FormBuilderTextField(name: 'password'),
                      const SizedBox(height: 18),
                      ElevatedButton(
                        onPressed: signUp,
                        child: const Text('Sign Up'),
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

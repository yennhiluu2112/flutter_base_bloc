import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/models/request/login_request/login_request.dart';
import 'package:flutter_base_firebase/global/widgets/label.dart';
import 'package:flutter_base_firebase/global/widgets/loading_overlay.dart';
import 'package:flutter_base_firebase/modules/login/bloc/login_bloc.dart';
import 'package:flutter_base_firebase/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../global/di/di_setup.dart';
import '../../global/themes/app_colors.dart';
import '../../global/widgets/base_page.dart';

@RoutePage()
class LoginPage extends BasePageScreen {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BasePageScreenState<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  late final LoginBloc _loginBloc;
  bool passwordObscure = true;

  @override
  void initState() {
    _loginBloc = getIt<LoginBloc>();
    super.initState();
  }

  void login() {
    FocusManager.instance.primaryFocus?.unfocus();
    if (_formKey.currentState?.saveAndValidate() == true) {
      final data = _formKey.currentState!.value;
      _loginBloc.add(
        LoginEvent.login(
          LoginRequest(
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
      create: (_) => _loginBloc,
      child: MultiBlocListener(
        listeners: [
          BlocListener<LoginBloc, LoginState>(
            listenWhen: (previous, current) => current.failure != null,
            listener: (context, state) {
              handleError(state.failure!);
            },
          ),
          BlocListener<LoginBloc, LoginState>(
            listenWhen: (previous, current) => current.isLoginSuccess,
            listener: (context, state) {
              context.router.replaceAll([const MainRoute()]);
            },
          ),
        ],
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return LoadingOverlay(
              loading: state.isShowLoading,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Login'),
                ),
                body: FormBuilder(
                  key: _formKey,
                  child: ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      const Label('Email'),
                      FormBuilderTextField(
                        name: 'email',
                        decoration: const InputDecoration(
                          hintText: 'Enter your email',
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: FormBuilderValidators.compose(
                          [
                            FormBuilderValidators.required(
                              errorText: 'Email is required!',
                            )
                          ],
                        ),
                      ),
                      const Label('Password'),
                      FormBuilderTextField(
                        name: 'password',
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: passwordObscure,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          suffixIcon: SizedBox.square(
                            dimension: 40,
                            child: IconButton(
                              icon: Icon(
                                passwordObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.greyG200,
                                size: 20,
                              ),
                              onPressed: () {
                                setState(
                                  () => passwordObscure = !passwordObscure,
                                );
                              },
                            ),
                          ),
                        ),
                        validator: FormBuilderValidators.compose(
                          [
                            FormBuilderValidators.required(
                              errorText: 'Password is required!',
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 18),
                      ElevatedButton(
                        onPressed: login,
                        child: const Text('Login'),
                      ),
                      const SizedBox(height: 18),
                      OutlinedButton(
                        onPressed: () {
                          context.router.push(const SignUpRoute());
                        },
                        child: const Text('Sign Up'),
                      ),
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

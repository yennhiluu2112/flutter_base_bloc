import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/widgets/label.dart';
import 'package:flutter_base_firebase/routes/app_router.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
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
              onPressed: () {},
              child: const Text('Login'),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                context.router.push(const SignUpRoute());
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

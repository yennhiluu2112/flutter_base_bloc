import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_base_firebase/global/models/request/login_request/login_request.dart';
import 'package:flutter_base_firebase/global/models/request/sign_up_request/sign_up_request.dart';
import 'package:injectable/injectable.dart';

import 'auth_data_source.dart';

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl();

  final auth = FirebaseAuth.instance;

  @override
  Future<UserCredential> signUp(SignUpRequest body) async {
    final user = await auth.createUserWithEmailAndPassword(
      email: body.email,
      password: body.password,
    );
    return user;
  }

  @override
  Future<UserCredential> login(LoginRequest body) async {
    final user = await auth.signInWithEmailAndPassword(
      email: body.email,
      password: body.password,
    );
    return user;
  }

  @override
  Future<void> signOut() async {
    await auth.signOut();
  }
}

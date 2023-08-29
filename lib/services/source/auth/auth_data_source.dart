import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_base_firebase/global/models/request/sign_up_request/sign_up_request.dart';

abstract class AuthRemoteDataSource {
  Future<UserCredential> signUp(SignUpRequest signUpRequestBody);
}

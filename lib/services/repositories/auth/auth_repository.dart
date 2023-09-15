import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_base_firebase/global/models/request/login_request/login_request.dart';
import 'package:flutter_base_firebase/global/models/request/sign_up_request/sign_up_request.dart';

import '../../../global/models/failure/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserCredential>> signUp(
    SignUpRequest signUpRequestBody,
  );

  Future<Either<Failure, UserCredential>> login(LoginRequest loginRequestBody);
  Future<Either<Failure, void>> signOut();
  Either<Failure, User?> getUser();
  Future<Either<Failure, void>> updateUser({
    String? photoUrl,
  });
}

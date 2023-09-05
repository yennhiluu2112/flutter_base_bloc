import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_base_firebase/global/models/failure/failure.dart';
import 'package:flutter_base_firebase/global/models/request/sign_up_request/sign_up_request.dart';
import 'package:flutter_base_firebase/services/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';

import '../../source/auth/auth_data_source.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._remoteDataSource);
  final AuthRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, UserCredential>> signUp(
      SignUpRequest signUpRequestBody) async {
    try {
      final result = await _remoteDataSource.signUp(signUpRequestBody);
      return right(result);
    } on FirebaseException catch (e) {
      return left(Failure.firebase(e));
    } catch (e) {
      return left(const Failure.unknown());
    }
  }
}

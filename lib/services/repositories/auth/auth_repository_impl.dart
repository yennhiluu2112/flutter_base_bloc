import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_base_firebase/global/models/failure/failure.dart';
import 'package:flutter_base_firebase/global/models/request/login_request/login_request.dart';
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

  @override
  Future<Either<Failure, UserCredential>> login(
      LoginRequest loginRequestBody) async {
    try {
      final result = await _remoteDataSource.login(loginRequestBody);
      return right(result);
    } on FirebaseException catch (e) {
      return left(Failure.firebase(e));
    } catch (e) {
      return left(const Failure.unknown());
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await _remoteDataSource.signOut();
      return right(unit);
    } on FirebaseException catch (e) {
      return left(Failure.firebase(e));
    } catch (e) {
      return left(const Failure.unknown());
    }
  }

  @override
  Either<Failure, User?> getUser() {
    try {
      return right(_remoteDataSource.getUser());
    } on FirebaseException catch (e) {
      return left(Failure.firebase(e));
    } catch (e) {
      return left(const Failure.unknown());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateUser({
    String? displayName,
    String? photoUrl,
  }) async {
    try {
      await _remoteDataSource.updateUser(
        photoUrl: photoUrl,
        displayName: displayName,
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return left(Failure.firebase(e));
    } catch (e) {
      return left(const Failure.unknown());
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_base_firebase/global/models/failure/failure.dart';
import 'package:flutter_base_firebase/global/models/singer/singer.dart';
import 'package:flutter_base_firebase/services/repositories/singer/singer_repository.dart';
import 'package:flutter_base_firebase/services/source/singer/singer_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SingerRepository)
class SingerRepositoryImpl implements SingerRepository {
  SingerRepositoryImpl(this._remoteDataSource);

  final SingerRemoteDataSource _remoteDataSource;

  @override
  Either<Failure, CollectionReference<Singer>> getSingerRef() {
    try {
      final result = _remoteDataSource.getSingerRef();
      return right(result);
    } catch (e) {
      return left(const Failure.unknown());
    }
  }

  @override
  Future<Either<Failure, Singer>> getSingleSinger(String id) async {
    try {
      final result = await _remoteDataSource.getSingleSinger(id);
      return right(result);
    } catch (e) {
      print(e);
      return left(const Failure.unknown());
    }
  }
}

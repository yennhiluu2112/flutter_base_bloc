import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_base_firebase/global/models/failure/failure.dart';
import 'package:flutter_base_firebase/global/models/singer/singer.dart';

abstract class SingerRepository {
  Either<Failure, CollectionReference<Singer>> getSingerRef();
  Future<Either<Failure, Singer>> getSingleSinger(String id);
}

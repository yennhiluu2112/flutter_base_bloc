import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_base_firebase/global/models/failure/failure.dart';
import 'package:flutter_base_firebase/global/models/song/song.dart';
import 'package:flutter_base_firebase/services/repositories/song/song_repository.dart';
import 'package:flutter_base_firebase/services/source/song/song_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SongRepository)
class SongRepositoryImpl implements SongRepository {
  SongRepositoryImpl(this._remoteDataSource);

  final SongRemoteDataSource _remoteDataSource;

  @override
  Either<Failure, CollectionReference<Song>> getSongRef() {
    try {
      final result = _remoteDataSource.getSongRef();
      return right(result);
    } catch (e) {
      return left(const Failure.unknown());
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_base_firebase/global/models/failure/failure.dart';

import '../../../global/models/song/song.dart';

abstract class SongRepository {
  Either<Failure, CollectionReference<Song>> getSongRef();
  Future<Either<Failure, Song>> getSingleSong(String id);
  Either<Failure, Query<Song>> getSongsOfSinger(String idSinger);
}

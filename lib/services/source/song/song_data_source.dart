import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_base_firebase/global/models/song/song.dart';

abstract class SongRemoteDataSource {
  CollectionReference<Song> getSongRef();
  Future<Song> getSingleSong(String id);
  Query<Song> getSongsOfSinger(String id);
}

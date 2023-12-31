import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_base_firebase/global/models/song/song.dart';
import 'package:flutter_base_firebase/services/source/song/song_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SongRemoteDataSource)
class SongRemoteDataSourceImpl implements SongRemoteDataSource {
  SongRemoteDataSourceImpl();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  CollectionReference<Song> getSongRef() {
    return firestore.collection('songs').withSongConverter();
  }

  @override
  Future<Song> getSingleSong(String id) async {
    final snapshot =
        await firestore.collection('songs').withSongConverter().doc(id).get();
    return snapshot.data()!;
  }

  @override
  Query<Song> getSongsOfSinger(String id) {
    return firestore
        .collection('songs')
        .withSongConverter()
        .where('idSinger', isEqualTo: id);
  }
}

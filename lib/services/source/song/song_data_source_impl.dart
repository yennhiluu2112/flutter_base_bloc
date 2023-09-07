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
}

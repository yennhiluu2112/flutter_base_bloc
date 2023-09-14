import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_base_firebase/global/models/singer/singer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'song.freezed.dart';
part 'song.g.dart';

@freezed
class Song with _$Song {
  factory Song({
    String? id,
    String? name,
    String? idSinger,
    String? audioPath,
    String? imageUrl,
    String? singerName,
    Singer? singer,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);
}

extension SongConverter on CollectionReference {
  CollectionReference<Song> withSongConverter() {
    return withConverter(
      fromFirestore: (snapshot, options) => Song.fromJson(snapshot.data()!),
      toFirestore: (song, options) => song.toJson(),
    );
  }
}

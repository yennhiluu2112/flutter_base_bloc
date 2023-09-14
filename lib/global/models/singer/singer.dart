import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'singer.freezed.dart';
part 'singer.g.dart';

@freezed
class Singer with _$Singer {
  factory Singer({
    String? id,
    String? name,
    String? imageUrl,
    String? description,
  }) = _Singer;

  factory Singer.fromJson(Map<String, dynamic> json) => _$SingerFromJson(json);
}

extension SongConverter on CollectionReference {
  CollectionReference<Singer> withSingerConverter() {
    return withConverter(
      fromFirestore: (snapshot, options) => Singer.fromJson(snapshot.data()!),
      toFirestore: (song, options) => song.toJson(),
    );
  }
}

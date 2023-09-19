// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Song _$$_SongFromJson(Map<String, dynamic> json) => _$_Song(
      id: json['id'] as String?,
      name: json['name'] as String?,
      idSinger: json['idSinger'] as String?,
      audioPath: json['audioPath'] as String?,
      imageUrl: json['imageUrl'] as String?,
      singerName: json['singerName'] as String?,
      singer: json['singer'] == null
          ? null
          : Singer.fromJson(json['singer'] as Map<String, dynamic>),
      lyrics: json['lyrics'] as String?,
    );

Map<String, dynamic> _$$_SongToJson(_$_Song instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'idSinger': instance.idSinger,
      'audioPath': instance.audioPath,
      'imageUrl': instance.imageUrl,
      'singerName': instance.singerName,
      'singer': instance.singer,
      'lyrics': instance.lyrics,
    };

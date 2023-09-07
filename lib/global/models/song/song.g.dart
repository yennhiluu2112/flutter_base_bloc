// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Song _$$_SongFromJson(Map<String, dynamic> json) => _$_Song(
      id: json['id'] as String?,
      name: json['name'] as String?,
      singer: json['singer'] as String?,
      audioPath: json['audioPath'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_SongToJson(_$_Song instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'singer': instance.singer,
      'audioPath': instance.audioPath,
      'imageUrl': instance.imageUrl,
    };

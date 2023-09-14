// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Song _$SongFromJson(Map<String, dynamic> json) {
  return _Song.fromJson(json);
}

/// @nodoc
mixin _$Song {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get idSinger => throw _privateConstructorUsedError;
  String? get audioPath => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get singerName => throw _privateConstructorUsedError;
  Singer? get singer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res, Song>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? idSinger,
      String? audioPath,
      String? imageUrl,
      String? singerName,
      Singer? singer});

  $SingerCopyWith<$Res>? get singer;
}

/// @nodoc
class _$SongCopyWithImpl<$Res, $Val extends Song>
    implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? idSinger = freezed,
    Object? audioPath = freezed,
    Object? imageUrl = freezed,
    Object? singerName = freezed,
    Object? singer = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      idSinger: freezed == idSinger
          ? _value.idSinger
          : idSinger // ignore: cast_nullable_to_non_nullable
              as String?,
      audioPath: freezed == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      singerName: freezed == singerName
          ? _value.singerName
          : singerName // ignore: cast_nullable_to_non_nullable
              as String?,
      singer: freezed == singer
          ? _value.singer
          : singer // ignore: cast_nullable_to_non_nullable
              as Singer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SingerCopyWith<$Res>? get singer {
    if (_value.singer == null) {
      return null;
    }

    return $SingerCopyWith<$Res>(_value.singer!, (value) {
      return _then(_value.copyWith(singer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SongCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$$_SongCopyWith(_$_Song value, $Res Function(_$_Song) then) =
      __$$_SongCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? idSinger,
      String? audioPath,
      String? imageUrl,
      String? singerName,
      Singer? singer});

  @override
  $SingerCopyWith<$Res>? get singer;
}

/// @nodoc
class __$$_SongCopyWithImpl<$Res> extends _$SongCopyWithImpl<$Res, _$_Song>
    implements _$$_SongCopyWith<$Res> {
  __$$_SongCopyWithImpl(_$_Song _value, $Res Function(_$_Song) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? idSinger = freezed,
    Object? audioPath = freezed,
    Object? imageUrl = freezed,
    Object? singerName = freezed,
    Object? singer = freezed,
  }) {
    return _then(_$_Song(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      idSinger: freezed == idSinger
          ? _value.idSinger
          : idSinger // ignore: cast_nullable_to_non_nullable
              as String?,
      audioPath: freezed == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      singerName: freezed == singerName
          ? _value.singerName
          : singerName // ignore: cast_nullable_to_non_nullable
              as String?,
      singer: freezed == singer
          ? _value.singer
          : singer // ignore: cast_nullable_to_non_nullable
              as Singer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Song implements _Song {
  _$_Song(
      {this.id,
      this.name,
      this.idSinger,
      this.audioPath,
      this.imageUrl,
      this.singerName,
      this.singer});

  factory _$_Song.fromJson(Map<String, dynamic> json) => _$$_SongFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? idSinger;
  @override
  final String? audioPath;
  @override
  final String? imageUrl;
  @override
  final String? singerName;
  @override
  final Singer? singer;

  @override
  String toString() {
    return 'Song(id: $id, name: $name, idSinger: $idSinger, audioPath: $audioPath, imageUrl: $imageUrl, singerName: $singerName, singer: $singer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Song &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.idSinger, idSinger) ||
                other.idSinger == idSinger) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.singerName, singerName) ||
                other.singerName == singerName) &&
            (identical(other.singer, singer) || other.singer == singer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, idSinger, audioPath, imageUrl, singerName, singer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SongCopyWith<_$_Song> get copyWith =>
      __$$_SongCopyWithImpl<_$_Song>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SongToJson(
      this,
    );
  }
}

abstract class _Song implements Song {
  factory _Song(
      {final String? id,
      final String? name,
      final String? idSinger,
      final String? audioPath,
      final String? imageUrl,
      final String? singerName,
      final Singer? singer}) = _$_Song;

  factory _Song.fromJson(Map<String, dynamic> json) = _$_Song.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get idSinger;
  @override
  String? get audioPath;
  @override
  String? get imageUrl;
  @override
  String? get singerName;
  @override
  Singer? get singer;
  @override
  @JsonKey(ignore: true)
  _$$_SongCopyWith<_$_Song> get copyWith => throw _privateConstructorUsedError;
}

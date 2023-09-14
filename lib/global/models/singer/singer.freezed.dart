// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'singer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Singer _$SingerFromJson(Map<String, dynamic> json) {
  return _Singer.fromJson(json);
}

/// @nodoc
mixin _$Singer {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingerCopyWith<Singer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingerCopyWith<$Res> {
  factory $SingerCopyWith(Singer value, $Res Function(Singer) then) =
      _$SingerCopyWithImpl<$Res, Singer>;
  @useResult
  $Res call({String? id, String? name, String? imageUrl, String? description});
}

/// @nodoc
class _$SingerCopyWithImpl<$Res, $Val extends Singer>
    implements $SingerCopyWith<$Res> {
  _$SingerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SingerCopyWith<$Res> implements $SingerCopyWith<$Res> {
  factory _$$_SingerCopyWith(_$_Singer value, $Res Function(_$_Singer) then) =
      __$$_SingerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? imageUrl, String? description});
}

/// @nodoc
class __$$_SingerCopyWithImpl<$Res>
    extends _$SingerCopyWithImpl<$Res, _$_Singer>
    implements _$$_SingerCopyWith<$Res> {
  __$$_SingerCopyWithImpl(_$_Singer _value, $Res Function(_$_Singer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Singer(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Singer implements _Singer {
  _$_Singer({this.id, this.name, this.imageUrl, this.description});

  factory _$_Singer.fromJson(Map<String, dynamic> json) =>
      _$$_SingerFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? imageUrl;
  @override
  final String? description;

  @override
  String toString() {
    return 'Singer(id: $id, name: $name, imageUrl: $imageUrl, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Singer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SingerCopyWith<_$_Singer> get copyWith =>
      __$$_SingerCopyWithImpl<_$_Singer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingerToJson(
      this,
    );
  }
}

abstract class _Singer implements Singer {
  factory _Singer(
      {final String? id,
      final String? name,
      final String? imageUrl,
      final String? description}) = _$_Singer;

  factory _Singer.fromJson(Map<String, dynamic> json) = _$_Singer.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_SingerCopyWith<_$_Singer> get copyWith =>
      throw _privateConstructorUsedError;
}

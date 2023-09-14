// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'singer_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SingerDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleSinger,
    required TResult Function() getSongsOfSingerQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleSinger,
    TResult? Function()? getSongsOfSingerQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleSinger,
    TResult Function()? getSongsOfSingerQuery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleSinger value) getSingleSinger,
    required TResult Function(_GetSongsOfSingerQuery value)
        getSongsOfSingerQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleSinger value)? getSingleSinger,
    TResult? Function(_GetSongsOfSingerQuery value)? getSongsOfSingerQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleSinger value)? getSingleSinger,
    TResult Function(_GetSongsOfSingerQuery value)? getSongsOfSingerQuery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingerDetailEventCopyWith<$Res> {
  factory $SingerDetailEventCopyWith(
          SingerDetailEvent value, $Res Function(SingerDetailEvent) then) =
      _$SingerDetailEventCopyWithImpl<$Res, SingerDetailEvent>;
}

/// @nodoc
class _$SingerDetailEventCopyWithImpl<$Res, $Val extends SingerDetailEvent>
    implements $SingerDetailEventCopyWith<$Res> {
  _$SingerDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetSingleSingerCopyWith<$Res> {
  factory _$$_GetSingleSingerCopyWith(
          _$_GetSingleSinger value, $Res Function(_$_GetSingleSinger) then) =
      __$$_GetSingleSingerCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_GetSingleSingerCopyWithImpl<$Res>
    extends _$SingerDetailEventCopyWithImpl<$Res, _$_GetSingleSinger>
    implements _$$_GetSingleSingerCopyWith<$Res> {
  __$$_GetSingleSingerCopyWithImpl(
      _$_GetSingleSinger _value, $Res Function(_$_GetSingleSinger) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetSingleSinger(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSingleSinger implements _GetSingleSinger {
  const _$_GetSingleSinger(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'SingerDetailEvent.getSingleSinger(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSingleSinger &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSingleSingerCopyWith<_$_GetSingleSinger> get copyWith =>
      __$$_GetSingleSingerCopyWithImpl<_$_GetSingleSinger>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleSinger,
    required TResult Function() getSongsOfSingerQuery,
  }) {
    return getSingleSinger(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleSinger,
    TResult? Function()? getSongsOfSingerQuery,
  }) {
    return getSingleSinger?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleSinger,
    TResult Function()? getSongsOfSingerQuery,
    required TResult orElse(),
  }) {
    if (getSingleSinger != null) {
      return getSingleSinger(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleSinger value) getSingleSinger,
    required TResult Function(_GetSongsOfSingerQuery value)
        getSongsOfSingerQuery,
  }) {
    return getSingleSinger(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleSinger value)? getSingleSinger,
    TResult? Function(_GetSongsOfSingerQuery value)? getSongsOfSingerQuery,
  }) {
    return getSingleSinger?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleSinger value)? getSingleSinger,
    TResult Function(_GetSongsOfSingerQuery value)? getSongsOfSingerQuery,
    required TResult orElse(),
  }) {
    if (getSingleSinger != null) {
      return getSingleSinger(this);
    }
    return orElse();
  }
}

abstract class _GetSingleSinger implements SingerDetailEvent {
  const factory _GetSingleSinger(final String id) = _$_GetSingleSinger;

  String get id;
  @JsonKey(ignore: true)
  _$$_GetSingleSingerCopyWith<_$_GetSingleSinger> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetSongsOfSingerQueryCopyWith<$Res> {
  factory _$$_GetSongsOfSingerQueryCopyWith(_$_GetSongsOfSingerQuery value,
          $Res Function(_$_GetSongsOfSingerQuery) then) =
      __$$_GetSongsOfSingerQueryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetSongsOfSingerQueryCopyWithImpl<$Res>
    extends _$SingerDetailEventCopyWithImpl<$Res, _$_GetSongsOfSingerQuery>
    implements _$$_GetSongsOfSingerQueryCopyWith<$Res> {
  __$$_GetSongsOfSingerQueryCopyWithImpl(_$_GetSongsOfSingerQuery _value,
      $Res Function(_$_GetSongsOfSingerQuery) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetSongsOfSingerQuery implements _GetSongsOfSingerQuery {
  const _$_GetSongsOfSingerQuery();

  @override
  String toString() {
    return 'SingerDetailEvent.getSongsOfSingerQuery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetSongsOfSingerQuery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleSinger,
    required TResult Function() getSongsOfSingerQuery,
  }) {
    return getSongsOfSingerQuery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleSinger,
    TResult? Function()? getSongsOfSingerQuery,
  }) {
    return getSongsOfSingerQuery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleSinger,
    TResult Function()? getSongsOfSingerQuery,
    required TResult orElse(),
  }) {
    if (getSongsOfSingerQuery != null) {
      return getSongsOfSingerQuery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleSinger value) getSingleSinger,
    required TResult Function(_GetSongsOfSingerQuery value)
        getSongsOfSingerQuery,
  }) {
    return getSongsOfSingerQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleSinger value)? getSingleSinger,
    TResult? Function(_GetSongsOfSingerQuery value)? getSongsOfSingerQuery,
  }) {
    return getSongsOfSingerQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleSinger value)? getSingleSinger,
    TResult Function(_GetSongsOfSingerQuery value)? getSongsOfSingerQuery,
    required TResult orElse(),
  }) {
    if (getSongsOfSingerQuery != null) {
      return getSongsOfSingerQuery(this);
    }
    return orElse();
  }
}

abstract class _GetSongsOfSingerQuery implements SingerDetailEvent {
  const factory _GetSongsOfSingerQuery() = _$_GetSongsOfSingerQuery;
}

/// @nodoc
mixin _$SingerDetailState {
  Failure? get failure => throw _privateConstructorUsedError;
  bool get isShowLoading => throw _privateConstructorUsedError;
  Singer? get singer => throw _privateConstructorUsedError;
  Query<Song>? get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingerDetailStateCopyWith<SingerDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingerDetailStateCopyWith<$Res> {
  factory $SingerDetailStateCopyWith(
          SingerDetailState value, $Res Function(SingerDetailState) then) =
      _$SingerDetailStateCopyWithImpl<$Res, SingerDetailState>;
  @useResult
  $Res call(
      {Failure? failure,
      bool isShowLoading,
      Singer? singer,
      Query<Song>? query});

  $FailureCopyWith<$Res>? get failure;
  $SingerCopyWith<$Res>? get singer;
}

/// @nodoc
class _$SingerDetailStateCopyWithImpl<$Res, $Val extends SingerDetailState>
    implements $SingerDetailStateCopyWith<$Res> {
  _$SingerDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isShowLoading = null,
    Object? singer = freezed,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isShowLoading: null == isShowLoading
          ? _value.isShowLoading
          : isShowLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      singer: freezed == singer
          ? _value.singer
          : singer // ignore: cast_nullable_to_non_nullable
              as Singer?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as Query<Song>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
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
abstract class _$$_SingerDetailStateCopyWith<$Res>
    implements $SingerDetailStateCopyWith<$Res> {
  factory _$$_SingerDetailStateCopyWith(_$_SingerDetailState value,
          $Res Function(_$_SingerDetailState) then) =
      __$$_SingerDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Failure? failure,
      bool isShowLoading,
      Singer? singer,
      Query<Song>? query});

  @override
  $FailureCopyWith<$Res>? get failure;
  @override
  $SingerCopyWith<$Res>? get singer;
}

/// @nodoc
class __$$_SingerDetailStateCopyWithImpl<$Res>
    extends _$SingerDetailStateCopyWithImpl<$Res, _$_SingerDetailState>
    implements _$$_SingerDetailStateCopyWith<$Res> {
  __$$_SingerDetailStateCopyWithImpl(
      _$_SingerDetailState _value, $Res Function(_$_SingerDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isShowLoading = null,
    Object? singer = freezed,
    Object? query = freezed,
  }) {
    return _then(_$_SingerDetailState(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isShowLoading: null == isShowLoading
          ? _value.isShowLoading
          : isShowLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      singer: freezed == singer
          ? _value.singer
          : singer // ignore: cast_nullable_to_non_nullable
              as Singer?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as Query<Song>?,
    ));
  }
}

/// @nodoc

class _$_SingerDetailState implements _SingerDetailState {
  const _$_SingerDetailState(
      {this.failure, this.isShowLoading = false, this.singer, this.query});

  @override
  final Failure? failure;
  @override
  @JsonKey()
  final bool isShowLoading;
  @override
  final Singer? singer;
  @override
  final Query<Song>? query;

  @override
  String toString() {
    return 'SingerDetailState(failure: $failure, isShowLoading: $isShowLoading, singer: $singer, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingerDetailState &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isShowLoading, isShowLoading) ||
                other.isShowLoading == isShowLoading) &&
            (identical(other.singer, singer) || other.singer == singer) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, failure, isShowLoading, singer, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SingerDetailStateCopyWith<_$_SingerDetailState> get copyWith =>
      __$$_SingerDetailStateCopyWithImpl<_$_SingerDetailState>(
          this, _$identity);
}

abstract class _SingerDetailState implements SingerDetailState {
  const factory _SingerDetailState(
      {final Failure? failure,
      final bool isShowLoading,
      final Singer? singer,
      final Query<Song>? query}) = _$_SingerDetailState;

  @override
  Failure? get failure;
  @override
  bool get isShowLoading;
  @override
  Singer? get singer;
  @override
  Query<Song>? get query;
  @override
  @JsonKey(ignore: true)
  _$$_SingerDetailStateCopyWith<_$_SingerDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

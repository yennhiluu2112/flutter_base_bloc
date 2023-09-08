// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SongDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleSong,
    required TResult Function(String path) initAudioPlayer,
    required TResult Function() playAudio,
    required TResult Function(Duration duration) seekAudio,
    required TResult Function() disposeAudio,
    required TResult Function() pauseAudio,
    required TResult Function() stopAudio,
    required TResult Function() closeBloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleSong,
    TResult? Function(String path)? initAudioPlayer,
    TResult? Function()? playAudio,
    TResult? Function(Duration duration)? seekAudio,
    TResult? Function()? disposeAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? stopAudio,
    TResult? Function()? closeBloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleSong,
    TResult Function(String path)? initAudioPlayer,
    TResult Function()? playAudio,
    TResult Function(Duration duration)? seekAudio,
    TResult Function()? disposeAudio,
    TResult Function()? pauseAudio,
    TResult Function()? stopAudio,
    TResult Function()? closeBloc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleSongEvent value) getSingleSong,
    required TResult Function(_InitAudioPlayerEvent value) initAudioPlayer,
    required TResult Function(_PlayAudioEvent value) playAudio,
    required TResult Function(_SeekAudioEvent value) seekAudio,
    required TResult Function(_DisposeAudioEvent value) disposeAudio,
    required TResult Function(_PauseAudioEvent value) pauseAudio,
    required TResult Function(_StopAudioEvent value) stopAudio,
    required TResult Function(_CloseBlocEvent value) closeBloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleSongEvent value)? getSingleSong,
    TResult? Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult? Function(_PlayAudioEvent value)? playAudio,
    TResult? Function(_SeekAudioEvent value)? seekAudio,
    TResult? Function(_DisposeAudioEvent value)? disposeAudio,
    TResult? Function(_PauseAudioEvent value)? pauseAudio,
    TResult? Function(_StopAudioEvent value)? stopAudio,
    TResult? Function(_CloseBlocEvent value)? closeBloc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleSongEvent value)? getSingleSong,
    TResult Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult Function(_PlayAudioEvent value)? playAudio,
    TResult Function(_SeekAudioEvent value)? seekAudio,
    TResult Function(_DisposeAudioEvent value)? disposeAudio,
    TResult Function(_PauseAudioEvent value)? pauseAudio,
    TResult Function(_StopAudioEvent value)? stopAudio,
    TResult Function(_CloseBlocEvent value)? closeBloc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongDetailEventCopyWith<$Res> {
  factory $SongDetailEventCopyWith(
          SongDetailEvent value, $Res Function(SongDetailEvent) then) =
      _$SongDetailEventCopyWithImpl<$Res, SongDetailEvent>;
}

/// @nodoc
class _$SongDetailEventCopyWithImpl<$Res, $Val extends SongDetailEvent>
    implements $SongDetailEventCopyWith<$Res> {
  _$SongDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetSingleSongEventCopyWith<$Res> {
  factory _$$_GetSingleSongEventCopyWith(_$_GetSingleSongEvent value,
          $Res Function(_$_GetSingleSongEvent) then) =
      __$$_GetSingleSongEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_GetSingleSongEventCopyWithImpl<$Res>
    extends _$SongDetailEventCopyWithImpl<$Res, _$_GetSingleSongEvent>
    implements _$$_GetSingleSongEventCopyWith<$Res> {
  __$$_GetSingleSongEventCopyWithImpl(
      _$_GetSingleSongEvent _value, $Res Function(_$_GetSingleSongEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetSingleSongEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSingleSongEvent implements _GetSingleSongEvent {
  const _$_GetSingleSongEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'SongDetailEvent.getSingleSong(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSingleSongEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSingleSongEventCopyWith<_$_GetSingleSongEvent> get copyWith =>
      __$$_GetSingleSongEventCopyWithImpl<_$_GetSingleSongEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleSong,
    required TResult Function(String path) initAudioPlayer,
    required TResult Function() playAudio,
    required TResult Function(Duration duration) seekAudio,
    required TResult Function() disposeAudio,
    required TResult Function() pauseAudio,
    required TResult Function() stopAudio,
    required TResult Function() closeBloc,
  }) {
    return getSingleSong(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleSong,
    TResult? Function(String path)? initAudioPlayer,
    TResult? Function()? playAudio,
    TResult? Function(Duration duration)? seekAudio,
    TResult? Function()? disposeAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? stopAudio,
    TResult? Function()? closeBloc,
  }) {
    return getSingleSong?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleSong,
    TResult Function(String path)? initAudioPlayer,
    TResult Function()? playAudio,
    TResult Function(Duration duration)? seekAudio,
    TResult Function()? disposeAudio,
    TResult Function()? pauseAudio,
    TResult Function()? stopAudio,
    TResult Function()? closeBloc,
    required TResult orElse(),
  }) {
    if (getSingleSong != null) {
      return getSingleSong(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleSongEvent value) getSingleSong,
    required TResult Function(_InitAudioPlayerEvent value) initAudioPlayer,
    required TResult Function(_PlayAudioEvent value) playAudio,
    required TResult Function(_SeekAudioEvent value) seekAudio,
    required TResult Function(_DisposeAudioEvent value) disposeAudio,
    required TResult Function(_PauseAudioEvent value) pauseAudio,
    required TResult Function(_StopAudioEvent value) stopAudio,
    required TResult Function(_CloseBlocEvent value) closeBloc,
  }) {
    return getSingleSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleSongEvent value)? getSingleSong,
    TResult? Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult? Function(_PlayAudioEvent value)? playAudio,
    TResult? Function(_SeekAudioEvent value)? seekAudio,
    TResult? Function(_DisposeAudioEvent value)? disposeAudio,
    TResult? Function(_PauseAudioEvent value)? pauseAudio,
    TResult? Function(_StopAudioEvent value)? stopAudio,
    TResult? Function(_CloseBlocEvent value)? closeBloc,
  }) {
    return getSingleSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleSongEvent value)? getSingleSong,
    TResult Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult Function(_PlayAudioEvent value)? playAudio,
    TResult Function(_SeekAudioEvent value)? seekAudio,
    TResult Function(_DisposeAudioEvent value)? disposeAudio,
    TResult Function(_PauseAudioEvent value)? pauseAudio,
    TResult Function(_StopAudioEvent value)? stopAudio,
    TResult Function(_CloseBlocEvent value)? closeBloc,
    required TResult orElse(),
  }) {
    if (getSingleSong != null) {
      return getSingleSong(this);
    }
    return orElse();
  }
}

abstract class _GetSingleSongEvent implements SongDetailEvent {
  const factory _GetSingleSongEvent(final String id) = _$_GetSingleSongEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$_GetSingleSongEventCopyWith<_$_GetSingleSongEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitAudioPlayerEventCopyWith<$Res> {
  factory _$$_InitAudioPlayerEventCopyWith(_$_InitAudioPlayerEvent value,
          $Res Function(_$_InitAudioPlayerEvent) then) =
      __$$_InitAudioPlayerEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$_InitAudioPlayerEventCopyWithImpl<$Res>
    extends _$SongDetailEventCopyWithImpl<$Res, _$_InitAudioPlayerEvent>
    implements _$$_InitAudioPlayerEventCopyWith<$Res> {
  __$$_InitAudioPlayerEventCopyWithImpl(_$_InitAudioPlayerEvent _value,
      $Res Function(_$_InitAudioPlayerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$_InitAudioPlayerEvent(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitAudioPlayerEvent implements _InitAudioPlayerEvent {
  const _$_InitAudioPlayerEvent(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'SongDetailEvent.initAudioPlayer(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitAudioPlayerEvent &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitAudioPlayerEventCopyWith<_$_InitAudioPlayerEvent> get copyWith =>
      __$$_InitAudioPlayerEventCopyWithImpl<_$_InitAudioPlayerEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleSong,
    required TResult Function(String path) initAudioPlayer,
    required TResult Function() playAudio,
    required TResult Function(Duration duration) seekAudio,
    required TResult Function() disposeAudio,
    required TResult Function() pauseAudio,
    required TResult Function() stopAudio,
    required TResult Function() closeBloc,
  }) {
    return initAudioPlayer(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleSong,
    TResult? Function(String path)? initAudioPlayer,
    TResult? Function()? playAudio,
    TResult? Function(Duration duration)? seekAudio,
    TResult? Function()? disposeAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? stopAudio,
    TResult? Function()? closeBloc,
  }) {
    return initAudioPlayer?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleSong,
    TResult Function(String path)? initAudioPlayer,
    TResult Function()? playAudio,
    TResult Function(Duration duration)? seekAudio,
    TResult Function()? disposeAudio,
    TResult Function()? pauseAudio,
    TResult Function()? stopAudio,
    TResult Function()? closeBloc,
    required TResult orElse(),
  }) {
    if (initAudioPlayer != null) {
      return initAudioPlayer(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleSongEvent value) getSingleSong,
    required TResult Function(_InitAudioPlayerEvent value) initAudioPlayer,
    required TResult Function(_PlayAudioEvent value) playAudio,
    required TResult Function(_SeekAudioEvent value) seekAudio,
    required TResult Function(_DisposeAudioEvent value) disposeAudio,
    required TResult Function(_PauseAudioEvent value) pauseAudio,
    required TResult Function(_StopAudioEvent value) stopAudio,
    required TResult Function(_CloseBlocEvent value) closeBloc,
  }) {
    return initAudioPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleSongEvent value)? getSingleSong,
    TResult? Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult? Function(_PlayAudioEvent value)? playAudio,
    TResult? Function(_SeekAudioEvent value)? seekAudio,
    TResult? Function(_DisposeAudioEvent value)? disposeAudio,
    TResult? Function(_PauseAudioEvent value)? pauseAudio,
    TResult? Function(_StopAudioEvent value)? stopAudio,
    TResult? Function(_CloseBlocEvent value)? closeBloc,
  }) {
    return initAudioPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleSongEvent value)? getSingleSong,
    TResult Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult Function(_PlayAudioEvent value)? playAudio,
    TResult Function(_SeekAudioEvent value)? seekAudio,
    TResult Function(_DisposeAudioEvent value)? disposeAudio,
    TResult Function(_PauseAudioEvent value)? pauseAudio,
    TResult Function(_StopAudioEvent value)? stopAudio,
    TResult Function(_CloseBlocEvent value)? closeBloc,
    required TResult orElse(),
  }) {
    if (initAudioPlayer != null) {
      return initAudioPlayer(this);
    }
    return orElse();
  }
}

abstract class _InitAudioPlayerEvent implements SongDetailEvent {
  const factory _InitAudioPlayerEvent(final String path) =
      _$_InitAudioPlayerEvent;

  String get path;
  @JsonKey(ignore: true)
  _$$_InitAudioPlayerEventCopyWith<_$_InitAudioPlayerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PlayAudioEventCopyWith<$Res> {
  factory _$$_PlayAudioEventCopyWith(
          _$_PlayAudioEvent value, $Res Function(_$_PlayAudioEvent) then) =
      __$$_PlayAudioEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayAudioEventCopyWithImpl<$Res>
    extends _$SongDetailEventCopyWithImpl<$Res, _$_PlayAudioEvent>
    implements _$$_PlayAudioEventCopyWith<$Res> {
  __$$_PlayAudioEventCopyWithImpl(
      _$_PlayAudioEvent _value, $Res Function(_$_PlayAudioEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayAudioEvent implements _PlayAudioEvent {
  const _$_PlayAudioEvent();

  @override
  String toString() {
    return 'SongDetailEvent.playAudio()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlayAudioEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleSong,
    required TResult Function(String path) initAudioPlayer,
    required TResult Function() playAudio,
    required TResult Function(Duration duration) seekAudio,
    required TResult Function() disposeAudio,
    required TResult Function() pauseAudio,
    required TResult Function() stopAudio,
    required TResult Function() closeBloc,
  }) {
    return playAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleSong,
    TResult? Function(String path)? initAudioPlayer,
    TResult? Function()? playAudio,
    TResult? Function(Duration duration)? seekAudio,
    TResult? Function()? disposeAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? stopAudio,
    TResult? Function()? closeBloc,
  }) {
    return playAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleSong,
    TResult Function(String path)? initAudioPlayer,
    TResult Function()? playAudio,
    TResult Function(Duration duration)? seekAudio,
    TResult Function()? disposeAudio,
    TResult Function()? pauseAudio,
    TResult Function()? stopAudio,
    TResult Function()? closeBloc,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleSongEvent value) getSingleSong,
    required TResult Function(_InitAudioPlayerEvent value) initAudioPlayer,
    required TResult Function(_PlayAudioEvent value) playAudio,
    required TResult Function(_SeekAudioEvent value) seekAudio,
    required TResult Function(_DisposeAudioEvent value) disposeAudio,
    required TResult Function(_PauseAudioEvent value) pauseAudio,
    required TResult Function(_StopAudioEvent value) stopAudio,
    required TResult Function(_CloseBlocEvent value) closeBloc,
  }) {
    return playAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleSongEvent value)? getSingleSong,
    TResult? Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult? Function(_PlayAudioEvent value)? playAudio,
    TResult? Function(_SeekAudioEvent value)? seekAudio,
    TResult? Function(_DisposeAudioEvent value)? disposeAudio,
    TResult? Function(_PauseAudioEvent value)? pauseAudio,
    TResult? Function(_StopAudioEvent value)? stopAudio,
    TResult? Function(_CloseBlocEvent value)? closeBloc,
  }) {
    return playAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleSongEvent value)? getSingleSong,
    TResult Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult Function(_PlayAudioEvent value)? playAudio,
    TResult Function(_SeekAudioEvent value)? seekAudio,
    TResult Function(_DisposeAudioEvent value)? disposeAudio,
    TResult Function(_PauseAudioEvent value)? pauseAudio,
    TResult Function(_StopAudioEvent value)? stopAudio,
    TResult Function(_CloseBlocEvent value)? closeBloc,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio(this);
    }
    return orElse();
  }
}

abstract class _PlayAudioEvent implements SongDetailEvent {
  const factory _PlayAudioEvent() = _$_PlayAudioEvent;
}

/// @nodoc
abstract class _$$_SeekAudioEventCopyWith<$Res> {
  factory _$$_SeekAudioEventCopyWith(
          _$_SeekAudioEvent value, $Res Function(_$_SeekAudioEvent) then) =
      __$$_SeekAudioEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_SeekAudioEventCopyWithImpl<$Res>
    extends _$SongDetailEventCopyWithImpl<$Res, _$_SeekAudioEvent>
    implements _$$_SeekAudioEventCopyWith<$Res> {
  __$$_SeekAudioEventCopyWithImpl(
      _$_SeekAudioEvent _value, $Res Function(_$_SeekAudioEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_SeekAudioEvent(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_SeekAudioEvent implements _SeekAudioEvent {
  const _$_SeekAudioEvent(this.duration);

  @override
  final Duration duration;

  @override
  String toString() {
    return 'SongDetailEvent.seekAudio(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeekAudioEvent &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeekAudioEventCopyWith<_$_SeekAudioEvent> get copyWith =>
      __$$_SeekAudioEventCopyWithImpl<_$_SeekAudioEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleSong,
    required TResult Function(String path) initAudioPlayer,
    required TResult Function() playAudio,
    required TResult Function(Duration duration) seekAudio,
    required TResult Function() disposeAudio,
    required TResult Function() pauseAudio,
    required TResult Function() stopAudio,
    required TResult Function() closeBloc,
  }) {
    return seekAudio(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleSong,
    TResult? Function(String path)? initAudioPlayer,
    TResult? Function()? playAudio,
    TResult? Function(Duration duration)? seekAudio,
    TResult? Function()? disposeAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? stopAudio,
    TResult? Function()? closeBloc,
  }) {
    return seekAudio?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleSong,
    TResult Function(String path)? initAudioPlayer,
    TResult Function()? playAudio,
    TResult Function(Duration duration)? seekAudio,
    TResult Function()? disposeAudio,
    TResult Function()? pauseAudio,
    TResult Function()? stopAudio,
    TResult Function()? closeBloc,
    required TResult orElse(),
  }) {
    if (seekAudio != null) {
      return seekAudio(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleSongEvent value) getSingleSong,
    required TResult Function(_InitAudioPlayerEvent value) initAudioPlayer,
    required TResult Function(_PlayAudioEvent value) playAudio,
    required TResult Function(_SeekAudioEvent value) seekAudio,
    required TResult Function(_DisposeAudioEvent value) disposeAudio,
    required TResult Function(_PauseAudioEvent value) pauseAudio,
    required TResult Function(_StopAudioEvent value) stopAudio,
    required TResult Function(_CloseBlocEvent value) closeBloc,
  }) {
    return seekAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleSongEvent value)? getSingleSong,
    TResult? Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult? Function(_PlayAudioEvent value)? playAudio,
    TResult? Function(_SeekAudioEvent value)? seekAudio,
    TResult? Function(_DisposeAudioEvent value)? disposeAudio,
    TResult? Function(_PauseAudioEvent value)? pauseAudio,
    TResult? Function(_StopAudioEvent value)? stopAudio,
    TResult? Function(_CloseBlocEvent value)? closeBloc,
  }) {
    return seekAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleSongEvent value)? getSingleSong,
    TResult Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult Function(_PlayAudioEvent value)? playAudio,
    TResult Function(_SeekAudioEvent value)? seekAudio,
    TResult Function(_DisposeAudioEvent value)? disposeAudio,
    TResult Function(_PauseAudioEvent value)? pauseAudio,
    TResult Function(_StopAudioEvent value)? stopAudio,
    TResult Function(_CloseBlocEvent value)? closeBloc,
    required TResult orElse(),
  }) {
    if (seekAudio != null) {
      return seekAudio(this);
    }
    return orElse();
  }
}

abstract class _SeekAudioEvent implements SongDetailEvent {
  const factory _SeekAudioEvent(final Duration duration) = _$_SeekAudioEvent;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$_SeekAudioEventCopyWith<_$_SeekAudioEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DisposeAudioEventCopyWith<$Res> {
  factory _$$_DisposeAudioEventCopyWith(_$_DisposeAudioEvent value,
          $Res Function(_$_DisposeAudioEvent) then) =
      __$$_DisposeAudioEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisposeAudioEventCopyWithImpl<$Res>
    extends _$SongDetailEventCopyWithImpl<$Res, _$_DisposeAudioEvent>
    implements _$$_DisposeAudioEventCopyWith<$Res> {
  __$$_DisposeAudioEventCopyWithImpl(
      _$_DisposeAudioEvent _value, $Res Function(_$_DisposeAudioEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DisposeAudioEvent implements _DisposeAudioEvent {
  const _$_DisposeAudioEvent();

  @override
  String toString() {
    return 'SongDetailEvent.disposeAudio()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DisposeAudioEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleSong,
    required TResult Function(String path) initAudioPlayer,
    required TResult Function() playAudio,
    required TResult Function(Duration duration) seekAudio,
    required TResult Function() disposeAudio,
    required TResult Function() pauseAudio,
    required TResult Function() stopAudio,
    required TResult Function() closeBloc,
  }) {
    return disposeAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleSong,
    TResult? Function(String path)? initAudioPlayer,
    TResult? Function()? playAudio,
    TResult? Function(Duration duration)? seekAudio,
    TResult? Function()? disposeAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? stopAudio,
    TResult? Function()? closeBloc,
  }) {
    return disposeAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleSong,
    TResult Function(String path)? initAudioPlayer,
    TResult Function()? playAudio,
    TResult Function(Duration duration)? seekAudio,
    TResult Function()? disposeAudio,
    TResult Function()? pauseAudio,
    TResult Function()? stopAudio,
    TResult Function()? closeBloc,
    required TResult orElse(),
  }) {
    if (disposeAudio != null) {
      return disposeAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleSongEvent value) getSingleSong,
    required TResult Function(_InitAudioPlayerEvent value) initAudioPlayer,
    required TResult Function(_PlayAudioEvent value) playAudio,
    required TResult Function(_SeekAudioEvent value) seekAudio,
    required TResult Function(_DisposeAudioEvent value) disposeAudio,
    required TResult Function(_PauseAudioEvent value) pauseAudio,
    required TResult Function(_StopAudioEvent value) stopAudio,
    required TResult Function(_CloseBlocEvent value) closeBloc,
  }) {
    return disposeAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleSongEvent value)? getSingleSong,
    TResult? Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult? Function(_PlayAudioEvent value)? playAudio,
    TResult? Function(_SeekAudioEvent value)? seekAudio,
    TResult? Function(_DisposeAudioEvent value)? disposeAudio,
    TResult? Function(_PauseAudioEvent value)? pauseAudio,
    TResult? Function(_StopAudioEvent value)? stopAudio,
    TResult? Function(_CloseBlocEvent value)? closeBloc,
  }) {
    return disposeAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleSongEvent value)? getSingleSong,
    TResult Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult Function(_PlayAudioEvent value)? playAudio,
    TResult Function(_SeekAudioEvent value)? seekAudio,
    TResult Function(_DisposeAudioEvent value)? disposeAudio,
    TResult Function(_PauseAudioEvent value)? pauseAudio,
    TResult Function(_StopAudioEvent value)? stopAudio,
    TResult Function(_CloseBlocEvent value)? closeBloc,
    required TResult orElse(),
  }) {
    if (disposeAudio != null) {
      return disposeAudio(this);
    }
    return orElse();
  }
}

abstract class _DisposeAudioEvent implements SongDetailEvent {
  const factory _DisposeAudioEvent() = _$_DisposeAudioEvent;
}

/// @nodoc
abstract class _$$_PauseAudioEventCopyWith<$Res> {
  factory _$$_PauseAudioEventCopyWith(
          _$_PauseAudioEvent value, $Res Function(_$_PauseAudioEvent) then) =
      __$$_PauseAudioEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PauseAudioEventCopyWithImpl<$Res>
    extends _$SongDetailEventCopyWithImpl<$Res, _$_PauseAudioEvent>
    implements _$$_PauseAudioEventCopyWith<$Res> {
  __$$_PauseAudioEventCopyWithImpl(
      _$_PauseAudioEvent _value, $Res Function(_$_PauseAudioEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PauseAudioEvent implements _PauseAudioEvent {
  const _$_PauseAudioEvent();

  @override
  String toString() {
    return 'SongDetailEvent.pauseAudio()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PauseAudioEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleSong,
    required TResult Function(String path) initAudioPlayer,
    required TResult Function() playAudio,
    required TResult Function(Duration duration) seekAudio,
    required TResult Function() disposeAudio,
    required TResult Function() pauseAudio,
    required TResult Function() stopAudio,
    required TResult Function() closeBloc,
  }) {
    return pauseAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleSong,
    TResult? Function(String path)? initAudioPlayer,
    TResult? Function()? playAudio,
    TResult? Function(Duration duration)? seekAudio,
    TResult? Function()? disposeAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? stopAudio,
    TResult? Function()? closeBloc,
  }) {
    return pauseAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleSong,
    TResult Function(String path)? initAudioPlayer,
    TResult Function()? playAudio,
    TResult Function(Duration duration)? seekAudio,
    TResult Function()? disposeAudio,
    TResult Function()? pauseAudio,
    TResult Function()? stopAudio,
    TResult Function()? closeBloc,
    required TResult orElse(),
  }) {
    if (pauseAudio != null) {
      return pauseAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleSongEvent value) getSingleSong,
    required TResult Function(_InitAudioPlayerEvent value) initAudioPlayer,
    required TResult Function(_PlayAudioEvent value) playAudio,
    required TResult Function(_SeekAudioEvent value) seekAudio,
    required TResult Function(_DisposeAudioEvent value) disposeAudio,
    required TResult Function(_PauseAudioEvent value) pauseAudio,
    required TResult Function(_StopAudioEvent value) stopAudio,
    required TResult Function(_CloseBlocEvent value) closeBloc,
  }) {
    return pauseAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleSongEvent value)? getSingleSong,
    TResult? Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult? Function(_PlayAudioEvent value)? playAudio,
    TResult? Function(_SeekAudioEvent value)? seekAudio,
    TResult? Function(_DisposeAudioEvent value)? disposeAudio,
    TResult? Function(_PauseAudioEvent value)? pauseAudio,
    TResult? Function(_StopAudioEvent value)? stopAudio,
    TResult? Function(_CloseBlocEvent value)? closeBloc,
  }) {
    return pauseAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleSongEvent value)? getSingleSong,
    TResult Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult Function(_PlayAudioEvent value)? playAudio,
    TResult Function(_SeekAudioEvent value)? seekAudio,
    TResult Function(_DisposeAudioEvent value)? disposeAudio,
    TResult Function(_PauseAudioEvent value)? pauseAudio,
    TResult Function(_StopAudioEvent value)? stopAudio,
    TResult Function(_CloseBlocEvent value)? closeBloc,
    required TResult orElse(),
  }) {
    if (pauseAudio != null) {
      return pauseAudio(this);
    }
    return orElse();
  }
}

abstract class _PauseAudioEvent implements SongDetailEvent {
  const factory _PauseAudioEvent() = _$_PauseAudioEvent;
}

/// @nodoc
abstract class _$$_StopAudioEventCopyWith<$Res> {
  factory _$$_StopAudioEventCopyWith(
          _$_StopAudioEvent value, $Res Function(_$_StopAudioEvent) then) =
      __$$_StopAudioEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopAudioEventCopyWithImpl<$Res>
    extends _$SongDetailEventCopyWithImpl<$Res, _$_StopAudioEvent>
    implements _$$_StopAudioEventCopyWith<$Res> {
  __$$_StopAudioEventCopyWithImpl(
      _$_StopAudioEvent _value, $Res Function(_$_StopAudioEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StopAudioEvent implements _StopAudioEvent {
  const _$_StopAudioEvent();

  @override
  String toString() {
    return 'SongDetailEvent.stopAudio()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StopAudioEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleSong,
    required TResult Function(String path) initAudioPlayer,
    required TResult Function() playAudio,
    required TResult Function(Duration duration) seekAudio,
    required TResult Function() disposeAudio,
    required TResult Function() pauseAudio,
    required TResult Function() stopAudio,
    required TResult Function() closeBloc,
  }) {
    return stopAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleSong,
    TResult? Function(String path)? initAudioPlayer,
    TResult? Function()? playAudio,
    TResult? Function(Duration duration)? seekAudio,
    TResult? Function()? disposeAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? stopAudio,
    TResult? Function()? closeBloc,
  }) {
    return stopAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleSong,
    TResult Function(String path)? initAudioPlayer,
    TResult Function()? playAudio,
    TResult Function(Duration duration)? seekAudio,
    TResult Function()? disposeAudio,
    TResult Function()? pauseAudio,
    TResult Function()? stopAudio,
    TResult Function()? closeBloc,
    required TResult orElse(),
  }) {
    if (stopAudio != null) {
      return stopAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleSongEvent value) getSingleSong,
    required TResult Function(_InitAudioPlayerEvent value) initAudioPlayer,
    required TResult Function(_PlayAudioEvent value) playAudio,
    required TResult Function(_SeekAudioEvent value) seekAudio,
    required TResult Function(_DisposeAudioEvent value) disposeAudio,
    required TResult Function(_PauseAudioEvent value) pauseAudio,
    required TResult Function(_StopAudioEvent value) stopAudio,
    required TResult Function(_CloseBlocEvent value) closeBloc,
  }) {
    return stopAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleSongEvent value)? getSingleSong,
    TResult? Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult? Function(_PlayAudioEvent value)? playAudio,
    TResult? Function(_SeekAudioEvent value)? seekAudio,
    TResult? Function(_DisposeAudioEvent value)? disposeAudio,
    TResult? Function(_PauseAudioEvent value)? pauseAudio,
    TResult? Function(_StopAudioEvent value)? stopAudio,
    TResult? Function(_CloseBlocEvent value)? closeBloc,
  }) {
    return stopAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleSongEvent value)? getSingleSong,
    TResult Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult Function(_PlayAudioEvent value)? playAudio,
    TResult Function(_SeekAudioEvent value)? seekAudio,
    TResult Function(_DisposeAudioEvent value)? disposeAudio,
    TResult Function(_PauseAudioEvent value)? pauseAudio,
    TResult Function(_StopAudioEvent value)? stopAudio,
    TResult Function(_CloseBlocEvent value)? closeBloc,
    required TResult orElse(),
  }) {
    if (stopAudio != null) {
      return stopAudio(this);
    }
    return orElse();
  }
}

abstract class _StopAudioEvent implements SongDetailEvent {
  const factory _StopAudioEvent() = _$_StopAudioEvent;
}

/// @nodoc
abstract class _$$_CloseBlocEventCopyWith<$Res> {
  factory _$$_CloseBlocEventCopyWith(
          _$_CloseBlocEvent value, $Res Function(_$_CloseBlocEvent) then) =
      __$$_CloseBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CloseBlocEventCopyWithImpl<$Res>
    extends _$SongDetailEventCopyWithImpl<$Res, _$_CloseBlocEvent>
    implements _$$_CloseBlocEventCopyWith<$Res> {
  __$$_CloseBlocEventCopyWithImpl(
      _$_CloseBlocEvent _value, $Res Function(_$_CloseBlocEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CloseBlocEvent implements _CloseBlocEvent {
  const _$_CloseBlocEvent();

  @override
  String toString() {
    return 'SongDetailEvent.closeBloc()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CloseBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleSong,
    required TResult Function(String path) initAudioPlayer,
    required TResult Function() playAudio,
    required TResult Function(Duration duration) seekAudio,
    required TResult Function() disposeAudio,
    required TResult Function() pauseAudio,
    required TResult Function() stopAudio,
    required TResult Function() closeBloc,
  }) {
    return closeBloc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleSong,
    TResult? Function(String path)? initAudioPlayer,
    TResult? Function()? playAudio,
    TResult? Function(Duration duration)? seekAudio,
    TResult? Function()? disposeAudio,
    TResult? Function()? pauseAudio,
    TResult? Function()? stopAudio,
    TResult? Function()? closeBloc,
  }) {
    return closeBloc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleSong,
    TResult Function(String path)? initAudioPlayer,
    TResult Function()? playAudio,
    TResult Function(Duration duration)? seekAudio,
    TResult Function()? disposeAudio,
    TResult Function()? pauseAudio,
    TResult Function()? stopAudio,
    TResult Function()? closeBloc,
    required TResult orElse(),
  }) {
    if (closeBloc != null) {
      return closeBloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleSongEvent value) getSingleSong,
    required TResult Function(_InitAudioPlayerEvent value) initAudioPlayer,
    required TResult Function(_PlayAudioEvent value) playAudio,
    required TResult Function(_SeekAudioEvent value) seekAudio,
    required TResult Function(_DisposeAudioEvent value) disposeAudio,
    required TResult Function(_PauseAudioEvent value) pauseAudio,
    required TResult Function(_StopAudioEvent value) stopAudio,
    required TResult Function(_CloseBlocEvent value) closeBloc,
  }) {
    return closeBloc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleSongEvent value)? getSingleSong,
    TResult? Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult? Function(_PlayAudioEvent value)? playAudio,
    TResult? Function(_SeekAudioEvent value)? seekAudio,
    TResult? Function(_DisposeAudioEvent value)? disposeAudio,
    TResult? Function(_PauseAudioEvent value)? pauseAudio,
    TResult? Function(_StopAudioEvent value)? stopAudio,
    TResult? Function(_CloseBlocEvent value)? closeBloc,
  }) {
    return closeBloc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleSongEvent value)? getSingleSong,
    TResult Function(_InitAudioPlayerEvent value)? initAudioPlayer,
    TResult Function(_PlayAudioEvent value)? playAudio,
    TResult Function(_SeekAudioEvent value)? seekAudio,
    TResult Function(_DisposeAudioEvent value)? disposeAudio,
    TResult Function(_PauseAudioEvent value)? pauseAudio,
    TResult Function(_StopAudioEvent value)? stopAudio,
    TResult Function(_CloseBlocEvent value)? closeBloc,
    required TResult orElse(),
  }) {
    if (closeBloc != null) {
      return closeBloc(this);
    }
    return orElse();
  }
}

abstract class _CloseBlocEvent implements SongDetailEvent {
  const factory _CloseBlocEvent() = _$_CloseBlocEvent;
}

/// @nodoc
mixin _$SongDetailState {
  Failure? get failure => throw _privateConstructorUsedError;
  bool get isShowLoading => throw _privateConstructorUsedError;
  Song? get song => throw _privateConstructorUsedError;
  AudioPlayer? get audioPlayer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SongDetailStateCopyWith<SongDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongDetailStateCopyWith<$Res> {
  factory $SongDetailStateCopyWith(
          SongDetailState value, $Res Function(SongDetailState) then) =
      _$SongDetailStateCopyWithImpl<$Res, SongDetailState>;
  @useResult
  $Res call(
      {Failure? failure,
      bool isShowLoading,
      Song? song,
      AudioPlayer? audioPlayer});

  $FailureCopyWith<$Res>? get failure;
  $SongCopyWith<$Res>? get song;
}

/// @nodoc
class _$SongDetailStateCopyWithImpl<$Res, $Val extends SongDetailState>
    implements $SongDetailStateCopyWith<$Res> {
  _$SongDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isShowLoading = null,
    Object? song = freezed,
    Object? audioPlayer = freezed,
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
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song?,
      audioPlayer: freezed == audioPlayer
          ? _value.audioPlayer
          : audioPlayer // ignore: cast_nullable_to_non_nullable
              as AudioPlayer?,
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
  $SongCopyWith<$Res>? get song {
    if (_value.song == null) {
      return null;
    }

    return $SongCopyWith<$Res>(_value.song!, (value) {
      return _then(_value.copyWith(song: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SongDetailStateCopyWith<$Res>
    implements $SongDetailStateCopyWith<$Res> {
  factory _$$_SongDetailStateCopyWith(
          _$_SongDetailState value, $Res Function(_$_SongDetailState) then) =
      __$$_SongDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Failure? failure,
      bool isShowLoading,
      Song? song,
      AudioPlayer? audioPlayer});

  @override
  $FailureCopyWith<$Res>? get failure;
  @override
  $SongCopyWith<$Res>? get song;
}

/// @nodoc
class __$$_SongDetailStateCopyWithImpl<$Res>
    extends _$SongDetailStateCopyWithImpl<$Res, _$_SongDetailState>
    implements _$$_SongDetailStateCopyWith<$Res> {
  __$$_SongDetailStateCopyWithImpl(
      _$_SongDetailState _value, $Res Function(_$_SongDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isShowLoading = null,
    Object? song = freezed,
    Object? audioPlayer = freezed,
  }) {
    return _then(_$_SongDetailState(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isShowLoading: null == isShowLoading
          ? _value.isShowLoading
          : isShowLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song?,
      audioPlayer: freezed == audioPlayer
          ? _value.audioPlayer
          : audioPlayer // ignore: cast_nullable_to_non_nullable
              as AudioPlayer?,
    ));
  }
}

/// @nodoc

class _$_SongDetailState implements _SongDetailState {
  const _$_SongDetailState(
      {this.failure, this.isShowLoading = false, this.song, this.audioPlayer});

  @override
  final Failure? failure;
  @override
  @JsonKey()
  final bool isShowLoading;
  @override
  final Song? song;
  @override
  final AudioPlayer? audioPlayer;

  @override
  String toString() {
    return 'SongDetailState(failure: $failure, isShowLoading: $isShowLoading, song: $song, audioPlayer: $audioPlayer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SongDetailState &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isShowLoading, isShowLoading) ||
                other.isShowLoading == isShowLoading) &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.audioPlayer, audioPlayer) ||
                other.audioPlayer == audioPlayer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, failure, isShowLoading, song, audioPlayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SongDetailStateCopyWith<_$_SongDetailState> get copyWith =>
      __$$_SongDetailStateCopyWithImpl<_$_SongDetailState>(this, _$identity);
}

abstract class _SongDetailState implements SongDetailState {
  const factory _SongDetailState(
      {final Failure? failure,
      final bool isShowLoading,
      final Song? song,
      final AudioPlayer? audioPlayer}) = _$_SongDetailState;

  @override
  Failure? get failure;
  @override
  bool get isShowLoading;
  @override
  Song? get song;
  @override
  AudioPlayer? get audioPlayer;
  @override
  @JsonKey(ignore: true)
  _$$_SongDetailStateCopyWith<_$_SongDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

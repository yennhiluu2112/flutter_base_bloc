// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSongRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSongRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSongRef,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSongRef value) getSongRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSongRef value)? getSongRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSongRef value)? getSongRef,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetSongRefCopyWith<$Res> {
  factory _$$_GetSongRefCopyWith(
          _$_GetSongRef value, $Res Function(_$_GetSongRef) then) =
      __$$_GetSongRefCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetSongRefCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetSongRef>
    implements _$$_GetSongRefCopyWith<$Res> {
  __$$_GetSongRefCopyWithImpl(
      _$_GetSongRef _value, $Res Function(_$_GetSongRef) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetSongRef implements _GetSongRef {
  const _$_GetSongRef();

  @override
  String toString() {
    return 'HomeEvent.getSongRef()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetSongRef);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSongRef,
  }) {
    return getSongRef();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSongRef,
  }) {
    return getSongRef?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSongRef,
    required TResult orElse(),
  }) {
    if (getSongRef != null) {
      return getSongRef();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSongRef value) getSongRef,
  }) {
    return getSongRef(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSongRef value)? getSongRef,
  }) {
    return getSongRef?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSongRef value)? getSongRef,
    required TResult orElse(),
  }) {
    if (getSongRef != null) {
      return getSongRef(this);
    }
    return orElse();
  }
}

abstract class _GetSongRef implements HomeEvent {
  const factory _GetSongRef() = _$_GetSongRef;
}

/// @nodoc
mixin _$HomeState {
  Failure? get failure => throw _privateConstructorUsedError;
  bool get isShowLoading => throw _privateConstructorUsedError;
  CollectionReference<Song>? get songRef => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Failure? failure,
      bool isShowLoading,
      CollectionReference<Song>? songRef});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isShowLoading = null,
    Object? songRef = freezed,
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
      songRef: freezed == songRef
          ? _value.songRef
          : songRef // ignore: cast_nullable_to_non_nullable
              as CollectionReference<Song>?,
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
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Failure? failure,
      bool isShowLoading,
      CollectionReference<Song>? songRef});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isShowLoading = null,
    Object? songRef = freezed,
  }) {
    return _then(_$_HomeState(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isShowLoading: null == isShowLoading
          ? _value.isShowLoading
          : isShowLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      songRef: freezed == songRef
          ? _value.songRef
          : songRef // ignore: cast_nullable_to_non_nullable
              as CollectionReference<Song>?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState({this.failure, this.isShowLoading = false, this.songRef});

  @override
  final Failure? failure;
  @override
  @JsonKey()
  final bool isShowLoading;
  @override
  final CollectionReference<Song>? songRef;

  @override
  String toString() {
    return 'HomeState(failure: $failure, isShowLoading: $isShowLoading, songRef: $songRef)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isShowLoading, isShowLoading) ||
                other.isShowLoading == isShowLoading) &&
            (identical(other.songRef, songRef) || other.songRef == songRef));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, isShowLoading, songRef);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final Failure? failure,
      final bool isShowLoading,
      final CollectionReference<Song>? songRef}) = _$_HomeState;

  @override
  Failure? get failure;
  @override
  bool get isShowLoading;
  @override
  CollectionReference<Song>? get songRef;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

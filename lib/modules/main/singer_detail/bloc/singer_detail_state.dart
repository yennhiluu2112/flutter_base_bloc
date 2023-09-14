part of 'singer_detail_bloc.dart';

@freezed
class SingerDetailState with _$SingerDetailState {
  const factory SingerDetailState({
    Failure? failure,
    @Default(false) bool isShowLoading,
    Singer? singer,
    Query<Song>? query,
  }) = _SingerDetailState;
}

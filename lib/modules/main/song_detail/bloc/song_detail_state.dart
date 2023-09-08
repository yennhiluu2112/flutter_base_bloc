part of 'song_detail_bloc.dart';

@freezed
class SongDetailState with _$SongDetailState {
  const factory SongDetailState({
    Failure? failure,
    @Default(false) bool isShowLoading,
    Song? song,
    AudioPlayer? audioPlayer,
  }) = _SongDetailState;
}

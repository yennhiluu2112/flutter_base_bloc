part of 'song_detail_bloc.dart';

@freezed
class SongDetailState with _$SongDetailState {
  const factory SongDetailState({
    Failure? failure,
    @Default(false) bool isShowLoading,
    @Default(0) int currentIndex,
    AudioPlayer? audioPlayer,
    @Default(AudioLoopMode.off) AudioLoopMode loopMode,
    @Default(false) isShuffled,
  }) = _SongDetailState;
}

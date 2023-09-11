part of 'song_detail_bloc.dart';

@freezed
class SongDetailEvent with _$SongDetailEvent {
  const factory SongDetailEvent.getSingleSong(String id) = _GetSingleSongEvent;
  const factory SongDetailEvent.initAudioPlayer(
      List<Song> songs, int initialIndex) = _InitAudioPlayerEvent;
  const factory SongDetailEvent.playAudio() = _PlayAudioEvent;
  const factory SongDetailEvent.changeCurrentIndex(int index) =
      _ChangeCurrentIndexEvent;
  const factory SongDetailEvent.setLoopMode() = _SetLoopModeEvent;
  const factory SongDetailEvent.setShuffleModeEnabled(bool enabled) =
      _SetShuffleModeEnabledEvent;
  const factory SongDetailEvent.seekAudio(Duration duration) = _SeekAudioEvent;
  const factory SongDetailEvent.seekAudioWithIndex(
      Duration duration, int index) = _SeekAudioWithIndexEvent;
  const factory SongDetailEvent.seekAudioToNext() = _SeekAudioToNextEvent;
  const factory SongDetailEvent.seekAudioToPrevious() =
      _SeekAudioToPreviousvent;
  const factory SongDetailEvent.disposeAudio() = _DisposeAudioEvent;
  const factory SongDetailEvent.pauseAudio() = _PauseAudioEvent;
  const factory SongDetailEvent.stopAudio() = _StopAudioEvent;
  const factory SongDetailEvent.closeBloc() = _CloseBlocEvent;
}

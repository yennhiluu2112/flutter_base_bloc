part of 'song_detail_bloc.dart';

@freezed
class SongDetailEvent with _$SongDetailEvent {
  const factory SongDetailEvent.getSingleSong(String id) = _GetSingleSongEvent;
  const factory SongDetailEvent.initAudioPlayer(String path) =
      _InitAudioPlayerEvent;
  const factory SongDetailEvent.playAudio() = _PlayAudioEvent;
  const factory SongDetailEvent.seekAudio(Duration duration) = _SeekAudioEvent;
  const factory SongDetailEvent.disposeAudio() = _DisposeAudioEvent;
  const factory SongDetailEvent.pauseAudio() = _PauseAudioEvent;
  const factory SongDetailEvent.stopAudio() = _StopAudioEvent;
  const factory SongDetailEvent.closeBloc() = _CloseBlocEvent;
}

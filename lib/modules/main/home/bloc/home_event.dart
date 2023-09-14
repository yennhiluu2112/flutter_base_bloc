part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getSongRef() = _GetSongRef;
  const factory HomeEvent.getSingerRef() = _GetSingerRef;
  const factory HomeEvent.getSingerOfSong(List<Song> songs) =
      _GetSingerOfSongRef;
}

import 'package:flutter_base_firebase/global/enum/audio_loop_mode.dart';
import 'package:flutter_base_firebase/services/repositories/song/song_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';

import '../../../../global/models/failure/failure.dart';
import '../../../../global/models/song/song.dart';

part 'song_detail_bloc.freezed.dart';
part 'song_detail_event.dart';
part 'song_detail_state.dart';

@injectable
class SongDetailBloc extends Bloc<SongDetailEvent, SongDetailState> {
  final SongRepository _songRepository;
  SongDetailBloc(this._songRepository) : super(const SongDetailState()) {
    on(
      (SongDetailEvent event, Emitter<SongDetailState> emit) async {
        await event.when(
          getSingleSong: (id) => _getSingleSong(emit, id),
          initAudioPlayer: (songs, initialIndex) =>
              _initAudioPlayer(emit, songs, initialIndex),
          playAudio: () => _playAudio(emit),
          seekAudio: (duration) => _seekAudio(emit, duration),
          disposeAudio: () => _disposeAudio(emit),
          stopAudio: () => _stopAudio(emit),
          pauseAudio: () => _pauseAudio(emit),
          closeBloc: () => _close(emit),
          seekAudioWithIndex: (duration, index) =>
              _seekAudioWithIndex(emit, duration, index),
          seekAudioToNext: () => _seekAudioToNext(emit),
          seekAudioToPrevious: () => _seekAudioToPrevious(emit),
          setLoopMode: () => _setLoopMode(emit),
          setShuffleModeEnabled: (enabled) =>
              _setShuffleModeEnabled(emit, enabled),
          changeCurrentIndex: (index) => _changeCurrentIndex(emit, index),
        );
      },
    );
  }

  Future<void> _getSingleSong(Emitter<SongDetailState> emit, String id) async {
    emit(state.copyWith(isShowLoading: true, failure: null));
    final result = await _songRepository.getSingleSong(id);
    emit(
      result.fold(
        (error) => state.copyWith(failure: error, isShowLoading: false),
        (result) {
          // add(SongDetailEvent.initAudioPlayer(result.audioPath!));
          add(const SongDetailEvent.playAudio());

          return state.copyWith(
            isShowLoading: false,
            // song: result,
          );
        },
      ),
    );
  }

  Future<void> _initAudioPlayer(
    Emitter<SongDetailState> emit,
    List<Song> songs,
    int initialIndex,
  ) async {
    final playlist = ConcatenatingAudioSource(
      children: songs
          .map(
            (e) => AudioSource.uri(Uri.parse(e.audioPath!)),
          )
          .toList(),
      useLazyPreparation: true,
    );
    emit(
      state.copyWith(
        isShowLoading: true,
        failure: null,
        audioPlayer: AudioPlayer(),
      ),
    );
    await state.audioPlayer?.setAudioSource(
      playlist,
      initialIndex: initialIndex,
      initialPosition: Duration.zero,
    );
    add(const SongDetailEvent.playAudio());
    emit(state.copyWith(isShowLoading: false, currentIndex: initialIndex));
  }

  Future<void> _playAudio(
    Emitter<SongDetailState> emit,
  ) async {
    await state.audioPlayer?.play();
    emit(state);
  }

  Future<void> _setLoopMode(
    Emitter<SongDetailState> emit,
  ) async {
    switch (state.loopMode) {
      case AudioLoopMode.all:
        await state.audioPlayer?.setLoopMode(AudioLoopMode.one.value);
        emit(state.copyWith(loopMode: AudioLoopMode.one));
      case AudioLoopMode.one:
        await state.audioPlayer?.setLoopMode(AudioLoopMode.off.value);
        emit(state.copyWith(loopMode: AudioLoopMode.off));
      case AudioLoopMode.off:
        await state.audioPlayer?.setLoopMode(AudioLoopMode.all.value);
        emit(state.copyWith(loopMode: AudioLoopMode.all));
    }
  }

  Future<void> _setShuffleModeEnabled(
    Emitter<SongDetailState> emit,
    bool enabled,
  ) async {
    await state.audioPlayer?.setShuffleModeEnabled(enabled);
    emit(state.copyWith(isShuffled: enabled));
  }

  Future<void> _seekAudio(
    Emitter<SongDetailState> emit,
    Duration duration,
  ) async {
    await state.audioPlayer?.seek(duration);
    emit(state);
  }

  Future<void> _seekAudioWithIndex(
    Emitter<SongDetailState> emit,
    Duration duration,
    int index,
  ) async {
    await state.audioPlayer?.seek(duration, index: index);
    emit(state.copyWith(currentIndex: index));
  }

  Future<void> _seekAudioToNext(
    Emitter<SongDetailState> emit,
  ) async {
    await state.audioPlayer?.seekToNext();
    emit(state.copyWith(currentIndex: state.audioPlayer?.currentIndex ?? 0));
  }

  Future<void> _seekAudioToPrevious(
    Emitter<SongDetailState> emit,
  ) async {
    await state.audioPlayer?.seekToPrevious();
    emit(state.copyWith(currentIndex: state.audioPlayer?.currentIndex ?? 0));
  }

  Future<void> _changeCurrentIndex(
    Emitter<SongDetailState> emit,
    int index,
  ) async {
    emit(state.copyWith(currentIndex: index));
  }

  Future<void> _disposeAudio(
    Emitter<SongDetailState> emit,
  ) async {
    await state.audioPlayer?.dispose();
    emit(state.copyWith(audioPlayer: null));
  }

  Future<void> _stopAudio(
    Emitter<SongDetailState> emit,
  ) async {
    await state.audioPlayer?.stop();
    emit(state);
  }

  Future<void> _pauseAudio(
    Emitter<SongDetailState> emit,
  ) async {
    await state.audioPlayer?.pause();
    emit(state);
  }

  Future<void> _close(
    Emitter<SongDetailState> emit,
  ) async {
    add(const SongDetailEvent.disposeAudio());
    super.close();
  }
}

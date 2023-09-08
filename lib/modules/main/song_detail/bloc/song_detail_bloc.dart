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
          initAudioPlayer: (String path) => _initAudioPlayer(emit, path),
          playAudio: () => _playAudio(emit),
          seekAudio: (duration) => _seekAudio(emit, duration),
          disposeAudio: () => _disposeAudio(emit),
          stopAudio: () => _stopAudio(emit),
          pauseAudio: () => _pauseAudio(emit),
          closeBloc: () => _close(emit),
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
          add(SongDetailEvent.initAudioPlayer(result.audioPath!));
          add(const SongDetailEvent.playAudio());

          return state.copyWith(
            isShowLoading: false,
            song: result,
          );
        },
      ),
    );
  }

  Future<void> _initAudioPlayer(
    Emitter<SongDetailState> emit,
    String path,
  ) async {
    emit(
      state.copyWith(
        isShowLoading: true,
        failure: null,
        audioPlayer: AudioPlayer(),
      ),
    );
    await state.audioPlayer?.setUrl(path);
    emit(state.copyWith(isShowLoading: false));
  }

  Future<void> _playAudio(
    Emitter<SongDetailState> emit,
  ) async {
    await state.audioPlayer?.play();
    emit(state);
  }

  Future<void> _seekAudio(
    Emitter<SongDetailState> emit,
    Duration duration,
  ) async {
    await state.audioPlayer?.seek(duration);
    emit(state);
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

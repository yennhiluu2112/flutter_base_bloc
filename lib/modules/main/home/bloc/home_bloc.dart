import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_base_firebase/global/models/failure/failure.dart';
import 'package:flutter_base_firebase/global/models/singer/singer.dart';
import 'package:flutter_base_firebase/services/repositories/singer/singer_repository.dart';
import 'package:flutter_base_firebase/services/repositories/song/song_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../global/models/song/song.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SongRepository _songRepository;
  final SingerRepository _singerRepository;
  HomeBloc(
    this._songRepository,
    this._singerRepository,
  ) : super(const HomeState()) {
    on(
      (HomeEvent event, Emitter<HomeState> emit) async {
        await event.when(
          getSongRef: () => _getSongRef(emit),
          getSingerRef: () => _getSingerRef(emit),
          getSingerOfSong: (songs) => _getSingerOfSongs(emit, songs),
        );
      },
    );
  }

  Future<void> _getSongRef(
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isShowLoading: true, failure: null));
    final result = _songRepository.getSongRef();
    emit(
      result.fold(
        (error) => state.copyWith(failure: error, isShowLoading: false),
        (result) {
          return state.copyWith(
            isShowLoading: false,
            songRef: result,
          );
        },
      ),
    );
  }

  Future<void> _getSingerRef(
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isShowLoading: true, failure: null));
    final result = _singerRepository.getSingerRef();
    emit(
      result.fold(
        (error) => state.copyWith(failure: error, isShowLoading: false),
        (result) {
          return state.copyWith(
            isShowLoading: false,
            singerRef: result,
          );
        },
      ),
    );
  }

  Future<void> _getSingerOfSongs(
    Emitter<HomeState> emit,
    List<Song> songs,
  ) async {
    emit(state.copyWith(isShowLoading: true, failure: null));
    List<Song> tempList = songs.map((e) => e).toList();

    for (int i = 0; i < songs.length; i++) {
      final song = songs[i];
      final result = await _singerRepository.getSingleSinger(song.idSinger!);
      Song? newSong;
      result.fold(
        (l) => newSong = song,
        (r) => newSong = song.copyWith(singer: r),
      );

      tempList[i] = newSong!;
    }

    emit(
      state.copyWith(songs: tempList, isShowLoading: false),
    );
  }
}

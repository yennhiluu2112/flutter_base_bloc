import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_base_firebase/services/repositories/singer/singer_repository.dart';
import 'package:flutter_base_firebase/services/repositories/song/song_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_base_firebase/global/models/failure/failure.dart';

import '../../../../global/models/singer/singer.dart';
import '../../../../global/models/song/song.dart';

part 'singer_detail_bloc.freezed.dart';
part 'singer_detail_event.dart';
part 'singer_detail_state.dart';

@injectable
class SingerDetailBloc extends Bloc<SingerDetailEvent, SingerDetailState> {
  SingerDetailBloc(
    this._singerRepository,
    this._songRepository,
  ) : super(const SingerDetailState()) {
    on(
      (SingerDetailEvent event, Emitter<SingerDetailState> emit) async {
        await event.when(
          getSingleSinger: (id) => _getSingleSinger(emit, id),
          getSongsOfSingerQuery: () => _getSongsOfSingerQuery(emit),
        );
      },
    );
  }

  final SingerRepository _singerRepository;
  final SongRepository _songRepository;

  Future<void> _getSingleSinger(
    Emitter<SingerDetailState> emit,
    String id,
  ) async {
    emit(state.copyWith(isShowLoading: true, failure: null));
    final result = await _singerRepository.getSingleSinger(id);
    emit(
      result.fold(
        (error) => state.copyWith(failure: error, isShowLoading: false),
        (result) {
          add(const SingerDetailEvent.getSongsOfSingerQuery());
          return state.copyWith(
            singer: result,
          );
        },
      ),
    );
  }

  Future<void> _getSongsOfSingerQuery(
    Emitter<SingerDetailState> emit,
  ) async {
    emit(state.copyWith(isShowLoading: true, failure: null));
    final result = _songRepository.getSongsOfSinger(state.singer!.id!);
    emit(
      result.fold(
        (error) => state.copyWith(failure: error, isShowLoading: false),
        (result) {
          return state.copyWith(
            isShowLoading: false,
            query: result,
          );
        },
      ),
    );
  }
}

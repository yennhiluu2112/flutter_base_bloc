import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_base_firebase/global/models/failure/failure.dart';
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
  HomeBloc(this._songRepository) : super(const HomeState()) {
    on(
      (HomeEvent event, Emitter<HomeState> emit) async {
        await event.when(
          getSongRef: () => _getSongRef(emit),
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
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_base_firebase/services/repositories/auth/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../global/models/failure/failure.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AuthRepository _authRepository;

  ProfileBloc(this._authRepository) : super(const ProfileState()) {
    on(
      (ProfileEvent event, Emitter<ProfileState> emit) async {
        await event.when(
          getUser: () => _getUser(emit),
        );
      },
    );
  }

  Future<void> _getUser(
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(isShowLoading: true, failure: null));
    final result = _authRepository.getUser();
    emit(
      result.fold(
        (error) => state.copyWith(failure: error, isShowLoading: false),
        (result) {
          return state.copyWith(
            isShowLoading: false,
            user: result,
          );
        },
      ),
    );
  }
}

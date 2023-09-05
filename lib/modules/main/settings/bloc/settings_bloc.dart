import 'package:flutter_base_firebase/global/providers/auth_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../global/models/failure/failure.dart';
import '../../../../services/repositories/auth/auth_repository.dart';
part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final AuthRepository _authRepository;
  SettingsBloc(this._authRepository) : super(const SettingsState()) {
    on<SettingsEvent>(
      (SettingsEvent event, Emitter<SettingsState> emit) async {
        await event.when(
          signOut: () => _signOut(emit),
        );
      },
    );
  }

  Future<void> _signOut(
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isShowLoading: true, failure: null));
    final result = await _authRepository.signOut();
    emit(
      result.fold(
        (error) => state.copyWith(failure: error, isShowLoading: false),
        (result) {
          AuthProvider().logout();
          return state.copyWith(
            isShowLoading: false,
            isSignOutSucess: true,
          );
        },
      ),
    );
  }
}

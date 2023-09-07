import 'package:flutter_base_firebase/global/models/failure/failure.dart';
import 'package:flutter_base_firebase/global/models/request/sign_up_request/sign_up_request.dart';
import 'package:flutter_base_firebase/services/repositories/auth/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepository _authRepository;

  SignUpBloc(this._authRepository) : super(const SignUpState()) {
    on<SignUpEvent>(
      (SignUpEvent event, Emitter<SignUpState> emit) async {
        await event.when(
          signUp: (body) => _signUp(emit, body),
        );
      },
    );
  }

  Future<void> _signUp(
    Emitter<SignUpState> emit,
    SignUpRequest body,
  ) async {
    emit(state.copyWith(isShowLoading: true, failure: null));
    final result = await _authRepository.signUp(body);
    emit(
      result.fold(
        (error) => state.copyWith(failure: error, isShowLoading: false),
        (result) {
          return state.copyWith(
            isShowLoading: false,
            isSignUpSucess: true,
          );
        },
      ),
    );
  }
}

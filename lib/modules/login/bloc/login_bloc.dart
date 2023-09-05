import 'package:flutter_base_firebase/global/models/request/login_request/login_request.dart';
import 'package:flutter_base_firebase/global/models/user_credentials/user_credentials.dart';
import 'package:flutter_base_firebase/global/providers/auth_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../global/models/failure/failure.dart';
import '../../../services/repositories/auth/auth_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;

  LoginBloc(this._authRepository) : super(const LoginState()) {
    on<LoginEvent>((LoginEvent event, Emitter<LoginState> emit) async {
      await event.when(login: (body) => _login(emit, body));
    });
  }

  Future<void> _login(
    Emitter<LoginState> emit,
    LoginRequest body,
  ) async {
    emit(state.copyWith(isShowLoading: true, failure: null));
    final result = await _authRepository.login(body);
    emit(
      result.fold(
        (error) => state.copyWith(failure: error, isShowLoading: false),
        (result) {
          final user = result.user;
          print(user?.uid);
          AuthProvider().login(
            UserCredentials(
              uid: user?.uid,
              email: user?.email,
              displayName: user?.displayName,
              photoURL: user?.photoURL,
              phoneNumber: user?.phoneNumber,
              emailVerified: user?.emailVerified,
            ),
          );
          return state.copyWith(
            isShowLoading: false,
            isLoginSuccess: true,
          );
        },
      ),
    );
  }
}

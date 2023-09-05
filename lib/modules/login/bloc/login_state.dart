part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    Failure? failure,
    @Default(false) bool isShowLoading,
    @Default(false) bool isLoginSuccess,
  }) = _LoginState;
}

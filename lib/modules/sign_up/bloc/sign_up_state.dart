part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    Failure? failure,
    @Default(false) bool isShowLoading,
    @Default(false) bool isSignUpSucess,
  }) = _SignUpState;
}

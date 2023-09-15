part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    Failure? failure,
    @Default(false) bool isShowLoading,
    User? user,
  }) = _ProfileState;
}

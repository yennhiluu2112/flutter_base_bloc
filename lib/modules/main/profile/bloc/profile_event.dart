part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUser() = _GetUserRef;
  const factory ProfileEvent.updateUser(
    String? displayName,
    String? photoUrl,
  ) = _UpdateUserRef;
}

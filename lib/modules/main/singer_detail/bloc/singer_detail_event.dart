part of 'singer_detail_bloc.dart';

@freezed
class SingerDetailEvent with _$SingerDetailEvent {
  const factory SingerDetailEvent.getSingleSinger(String id) = _GetSingleSinger;
  const factory SingerDetailEvent.getSongsOfSingerQuery() =
      _GetSongsOfSingerQuery;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../modules/login/bloc/login_bloc.dart' as _i7;
import '../../modules/main/home/bloc/home_bloc.dart' as _i19;
import '../../modules/main/profile/bloc/profile_bloc.dart' as _i8;
import '../../modules/main/settings/bloc/settings_bloc.dart' as _i9;
import '../../modules/main/singer_detail/bloc/singer_detail_bloc.dart' as _i20;
import '../../modules/main/song_detail/bloc/song_detail_bloc.dart' as _i21;
import '../../modules/sign_up/bloc/sign_up_bloc.dart' as _i10;
import '../../services/repositories/auth/auth_repository.dart' as _i5;
import '../../services/repositories/auth/auth_repository_impl.dart' as _i6;
import '../../services/repositories/singer/singer_repository.dart' as _i13;
import '../../services/repositories/singer/singer_repository_impl.dart' as _i14;
import '../../services/repositories/song/song_repository.dart' as _i17;
import '../../services/repositories/song/song_repository_impl.dart' as _i18;
import '../../services/source/auth/auth_data_source.dart' as _i3;
import '../../services/source/auth/auth_data_source_impl.dart' as _i4;
import '../../services/source/singer/singer_data_source.dart' as _i11;
import '../../services/source/singer/singer_data_source_impl.dart' as _i12;
import '../../services/source/song/song_data_source.dart' as _i15;
import '../../services/source/song/song_data_source_impl.dart' as _i16;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.AuthRemoteDataSource>(() => _i4.AuthRemoteDataSourceImpl());
  gh.factory<_i5.AuthRepository>(
      () => _i6.AuthRepositoryImpl(gh<_i3.AuthRemoteDataSource>()));
  gh.factory<_i7.LoginBloc>(() => _i7.LoginBloc(gh<_i5.AuthRepository>()));
  gh.factory<_i8.ProfileBloc>(() => _i8.ProfileBloc(gh<_i5.AuthRepository>()));
  gh.factory<_i9.SettingsBloc>(
      () => _i9.SettingsBloc(gh<_i5.AuthRepository>()));
  gh.factory<_i10.SignUpBloc>(() => _i10.SignUpBloc(gh<_i5.AuthRepository>()));
  gh.factory<_i11.SingerRemoteDataSource>(
      () => _i12.SingerRemoteDataSourceImpl());
  gh.factory<_i13.SingerRepository>(
      () => _i14.SingerRepositoryImpl(gh<_i11.SingerRemoteDataSource>()));
  gh.factory<_i15.SongRemoteDataSource>(() => _i16.SongRemoteDataSourceImpl());
  gh.factory<_i17.SongRepository>(
      () => _i18.SongRepositoryImpl(gh<_i15.SongRemoteDataSource>()));
  gh.factory<_i19.HomeBloc>(() => _i19.HomeBloc(
        gh<_i17.SongRepository>(),
        gh<_i13.SingerRepository>(),
      ));
  gh.factory<_i20.SingerDetailBloc>(() => _i20.SingerDetailBloc(
        gh<_i13.SingerRepository>(),
        gh<_i17.SongRepository>(),
      ));
  gh.factory<_i21.SongDetailBloc>(
      () => _i21.SongDetailBloc(gh<_i17.SongRepository>()));
  return getIt;
}

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
import '../../modules/main/home/bloc/home_bloc.dart' as _i14;
import '../../modules/main/settings/bloc/settings_bloc.dart' as _i8;
import '../../modules/sign_up/bloc/sign_up_bloc.dart' as _i9;
import '../../services/repositories/auth/auth_repository.dart' as _i5;
import '../../services/repositories/auth/auth_repository_impl.dart' as _i6;
import '../../services/repositories/song/song_repository.dart' as _i12;
import '../../services/repositories/song/song_repository_impl.dart' as _i13;
import '../../services/source/auth/auth_data_source.dart' as _i3;
import '../../services/source/auth/auth_data_source_impl.dart' as _i4;
import '../../services/source/song/song_data_source.dart' as _i10;
import '../../services/source/song/song_data_source_impl.dart' as _i11;

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
  gh.factory<_i8.SettingsBloc>(
      () => _i8.SettingsBloc(gh<_i5.AuthRepository>()));
  gh.factory<_i9.SignUpBloc>(() => _i9.SignUpBloc(gh<_i5.AuthRepository>()));
  gh.factory<_i10.SongRemoteDataSource>(() => _i11.SongRemoteDataSourceImpl());
  gh.factory<_i12.SongRepository>(
      () => _i13.SongRepositoryImpl(gh<_i10.SongRemoteDataSource>()));
  gh.factory<_i14.HomeBloc>(() => _i14.HomeBloc(gh<_i12.SongRepository>()));
  return getIt;
}

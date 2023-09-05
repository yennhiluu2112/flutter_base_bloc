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
import '../../modules/main/settings/bloc/settings_bloc.dart' as _i8;
import '../../modules/sign_up/bloc/sign_up_bloc.dart' as _i9;
import '../../services/repositories/auth/auth_repository.dart' as _i5;
import '../../services/repositories/auth/auth_repository_impl.dart' as _i6;
import '../../services/source/auth/auth_data_source.dart' as _i3;
import '../../services/source/auth/auth_data_source_impl.dart' as _i4;

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
  return getIt;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;

import 'application/auth/auth_controller.dart' as _i23;
import 'application/login/login_controller.dart' as _i26;
import 'application/profile/profile_controller.dart' as _i20;
import 'application/register/register_controller.dart' as _i21;
import 'application/view_data/view_controller.dart' as _i22;
import 'domain/auth/i_auth_repository.dart' as _i10;
import 'domain/core/i_network_service.dart' as _i12;
import 'domain/core/i_storage.dart' as _i5;
import 'domain/login/i_login_repository.dart' as _i24;
import 'domain/profile/i_profile_repository.dart' as _i14;
import 'domain/register/i_register_repository.dart' as _i16;
import 'domain/view_data/i_view_repository.dart' as _i18;
import 'infrastructure/auth/auth_repository.dart' as _i11;
import 'infrastructure/core/auth_interceptor.dart' as _i8;
import 'infrastructure/core/network_service.dart' as _i13;
import 'infrastructure/core/register_module.dart' as _i27;
import 'infrastructure/core/storage.dart' as _i6;
import 'infrastructure/login/login_repository.dart' as _i25;
import 'infrastructure/profile/profile_repository.dart' as _i15;
import 'infrastructure/register/register_repository.dart' as _i17;
import 'infrastructure/view_data/view_data_repository.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i4.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i5.IStorage>(() => _i6.Storage(get<_i4.HiveInterface>()));
  gh.lazySingleton<_i7.Logger>(() => registerModule.logger);
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i8.AuthInterceptor>(
      () => _i8.AuthInterceptor(get<_i5.IStorage>(), get<String>()));
  gh.lazySingleton<_i9.Dio>(() => registerModule.dio(
      get<String>(instanceName: 'baseUrl'), get<_i5.IStorage>()));
  gh.lazySingleton<_i10.IAuthRepository>(
      () => _i11.AuthRepository(get<_i5.IStorage>()));
  gh.lazySingleton<_i12.INetworkService>(() => _i13.NetworkService(
      get<_i9.Dio>(), get<_i5.IStorage>(), get<_i3.Connectivity>()));
  gh.lazySingleton<_i14.IProfileRepository>(
      () => _i15.ProfileRepository(get<_i12.INetworkService>()));
  gh.lazySingleton<_i16.IRegisterRepository>(
      () => _i17.RegisterRepository(get<_i12.INetworkService>()));
  gh.lazySingleton<_i18.IViewRepository>(
      () => _i19.ViewRepository(get<_i12.INetworkService>()));
  gh.factory<_i20.ProfileController>(
      () => _i20.ProfileController(get<_i14.IProfileRepository>()));
  gh.factory<_i21.RegisterController>(
      () => _i21.RegisterController(get<_i16.IRegisterRepository>()));
  gh.factory<_i22.ViewController>(
      () => _i22.ViewController(get<_i18.IViewRepository>()));
  gh.factory<_i23.AuthController>(() =>
      _i23.AuthController(get<_i10.IAuthRepository>(), get<_i5.IStorage>()));
  gh.lazySingleton<_i24.ILoginRepository>(() =>
      _i25.LoginRepository(get<_i12.INetworkService>(), get<_i5.IStorage>()));
  gh.factory<_i26.LoginController>(() =>
      _i26.LoginController(get<_i24.ILoginRepository>(), get<_i5.IStorage>()));
  return get;
}

class _$RegisterModule extends _i27.RegisterModule {}

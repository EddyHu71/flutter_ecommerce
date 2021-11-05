// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i9;

import 'application/auth/auth_controller.dart' as _i26;
import 'application/login/login_controller.dart' as _i29;
import 'application/logout/logout_controller.dart' as _i10;
import 'application/profile/profile_controller.dart' as _i23;
import 'application/register/register_controller.dart' as _i24;
import 'application/view_data/view_controller.dart' as _i25;
import 'domain/auth/i_auth_repository.dart' as _i13;
import 'domain/core/i_network_service.dart' as _i15;
import 'domain/core/i_storage.dart' as _i7;
import 'domain/login/i_login_repository.dart' as _i27;
import 'domain/logout/i_logout_repository.dart' as _i5;
import 'domain/profile/i_profile_repository.dart' as _i17;
import 'domain/register/i_register_repository.dart' as _i19;
import 'domain/view_data/i_view_repository.dart' as _i21;
import 'infrastructure/auth/auth_repository.dart' as _i14;
import 'infrastructure/core/auth_interceptor.dart' as _i11;
import 'infrastructure/core/network_service.dart' as _i16;
import 'infrastructure/core/register_module.dart' as _i30;
import 'infrastructure/core/storage.dart' as _i8;
import 'infrastructure/login/login_repository.dart' as _i28;
import 'infrastructure/logout/logout_repository.dart' as _i6;
import 'infrastructure/profile/profile_repository.dart' as _i18;
import 'infrastructure/register/register_repository.dart' as _i20;
import 'infrastructure/view_data/view_data_repository.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i4.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i5.ILogoutRepository>(() => _i6.LogoutRepository());
  gh.lazySingleton<_i7.IStorage>(() => _i8.Storage(get<_i4.HiveInterface>()));
  gh.lazySingleton<_i9.Logger>(() => registerModule.logger);
  gh.factory<_i10.LogoutController>(
      () => _i10.LogoutController(get<_i5.ILogoutRepository>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i11.AuthInterceptor>(
      () => _i11.AuthInterceptor(get<_i7.IStorage>(), get<String>()));
  gh.lazySingleton<_i12.Dio>(() => registerModule.dio(
      get<String>(instanceName: 'baseUrl'), get<_i7.IStorage>()));
  gh.lazySingleton<_i13.IAuthRepository>(
      () => _i14.AuthRepository(get<_i7.IStorage>()));
  gh.lazySingleton<_i15.INetworkService>(() => _i16.NetworkService(
      get<_i12.Dio>(), get<_i7.IStorage>(), get<_i3.Connectivity>()));
  gh.lazySingleton<_i17.IProfileRepository>(
      () => _i18.ProfileRepository(get<_i15.INetworkService>()));
  gh.lazySingleton<_i19.IRegisterRepository>(
      () => _i20.RegisterRepository(get<_i15.INetworkService>()));
  gh.lazySingleton<_i21.IViewRepository>(
      () => _i22.ViewRepository(get<_i15.INetworkService>()));
  gh.factory<_i23.ProfileController>(
      () => _i23.ProfileController(get<_i17.IProfileRepository>()));
  gh.factory<_i24.RegisterController>(
      () => _i24.RegisterController(get<_i19.IRegisterRepository>()));
  gh.factory<_i25.ViewController>(
      () => _i25.ViewController(get<_i21.IViewRepository>()));
  gh.factory<_i26.AuthController>(() =>
      _i26.AuthController(get<_i13.IAuthRepository>(), get<_i7.IStorage>()));
  gh.lazySingleton<_i27.ILoginRepository>(() =>
      _i28.LoginRepository(get<_i15.INetworkService>(), get<_i7.IStorage>()));
  gh.factory<_i29.LoginController>(() =>
      _i29.LoginController(get<_i27.ILoginRepository>(), get<_i7.IStorage>()));
  return get;
}

class _$RegisterModule extends _i30.RegisterModule {}

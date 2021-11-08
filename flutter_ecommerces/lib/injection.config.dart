// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i11;

import 'application/auth/auth_controller.dart' as _i13;
import 'application/login/login_controller.dart' as _i29;
import 'application/logout/logout_controller.dart' as _i12;
import 'application/profile/profile_controller.dart' as _i24;
import 'application/register/register_controller.dart' as _i25;
import 'application/view_data/view_controller.dart' as _i26;
import 'domain/auth/i_auth_repository.dart' as _i5;
import 'domain/core/i_network_service.dart' as _i16;
import 'domain/core/i_storage.dart' as _i9;
import 'domain/core/storage.dart' as _i10;
import 'domain/login/i_login_repository.dart' as _i27;
import 'domain/logout/i_logout_repository.dart' as _i7;
import 'domain/profile/i_profile_repository.dart' as _i18;
import 'domain/register/i_register_repository.dart' as _i20;
import 'domain/view_data/i_view_repository.dart' as _i22;
import 'infrastructure/auth/auth_repository.dart' as _i6;
import 'infrastructure/core/auth_interceptor.dart' as _i14;
import 'infrastructure/core/network_service.dart' as _i17;
import 'infrastructure/core/register_module.dart' as _i30;
import 'infrastructure/login/login_repository.dart' as _i28;
import 'infrastructure/logout/logout_repository.dart' as _i8;
import 'infrastructure/profile/profile_repository.dart' as _i19;
import 'infrastructure/register/register_repository.dart' as _i21;
import 'infrastructure/view_data/view_data_repository.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i4.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i5.IAuthRepository>(() => _i6.AuthRepository());
  gh.lazySingleton<_i7.ILogoutRepository>(() => _i8.LogoutRepository());
  gh.lazySingleton<_i9.IStorage>(() => _i10.Storage(get<_i4.HiveInterface>()));
  gh.lazySingleton<_i11.Logger>(() => registerModule.logger);
  gh.factory<_i12.LogoutController>(
      () => _i12.LogoutController(get<_i7.ILogoutRepository>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i13.AuthController>(
      () => _i13.AuthController(get<_i5.IAuthRepository>()));
  gh.factory<_i14.AuthInterceptor>(
      () => _i14.AuthInterceptor(get<_i9.IStorage>(), get<String>()));
  gh.lazySingleton<_i15.Dio>(() => registerModule.dio(
      get<String>(instanceName: 'baseUrl'), get<_i9.IStorage>()));
  gh.lazySingleton<_i16.INetworkService>(() => _i17.NetworkService(
      get<_i15.Dio>(), get<_i9.IStorage>(), get<_i3.Connectivity>()));
  gh.lazySingleton<_i18.IProfileRepository>(
      () => _i19.ProfileRepository(get<_i16.INetworkService>()));
  gh.lazySingleton<_i20.IRegisterRepository>(
      () => _i21.RegisterRepository(get<_i16.INetworkService>()));
  gh.lazySingleton<_i22.IViewRepository>(
      () => _i23.ViewRepository(get<_i16.INetworkService>()));
  gh.factory<_i24.ProfileController>(
      () => _i24.ProfileController(get<_i18.IProfileRepository>()));
  gh.factory<_i25.RegisterController>(
      () => _i25.RegisterController(get<_i20.IRegisterRepository>()));
  gh.factory<_i26.ViewController>(
      () => _i26.ViewController(get<_i22.IViewRepository>()));
  gh.lazySingleton<_i27.ILoginRepository>(
      () => _i28.LoginRepository(get<_i16.INetworkService>()));
  gh.factory<_i29.LoginController>(
      () => _i29.LoginController(get<_i27.ILoginRepository>()));
  return get;
}

class _$RegisterModule extends _i30.RegisterModule {}

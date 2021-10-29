// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:code_id_flutter/code_id_flutter.dart' as _i7;
import 'package:code_id_flutter/code_packages/alice/alice.dart' as _i3;
import 'package:connectivity/connectivity.dart' as _i13;
import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i8;

import 'application/login/login_controller.dart' as _i16;
import 'domain/core/i_network_service.dart' as _i10;
import 'domain/core/i_storage.dart' as _i4;
import 'domain/login/i_login_repository.dart' as _i14;
import 'infrastructure/core/auth_interceptor.dart' as _i9;
import 'infrastructure/core/network_service.dart' as _i11;
import 'infrastructure/core/register_module.dart' as _i17;
import 'infrastructure/core/storage.dart' as _i5;
import 'infrastructure/login/login_repository.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Alice>(() => registerModule.alice);
  gh.lazySingleton<_i4.IStorage>(() => _i5.Storage(get<_i6.HiveInterface>()));
  gh.lazySingleton<_i7.IStorage<dynamic>>(() => registerModule.storage);
  gh.lazySingleton<_i8.Logger>(() => registerModule.logger);
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i9.AuthInterceptor>(
      () => _i9.AuthInterceptor(get<_i4.IStorage>(), get<String>()));
  gh.lazySingleton<_i10.INetworkService>(() => _i11.NetworkService(
      get<_i12.Dio>(), get<_i4.IStorage>(), get<_i13.Connectivity>()));
  await gh.lazySingletonAsync<_i7.INetworkService>(
      () => registerModule.network(get<String>(instanceName: 'baseUrl'),
          get<_i7.IStorage<dynamic>>(), get<_i3.Alice>()),
      preResolve: true);
  gh.lazySingleton<_i14.ILoginRepository>(
      () => _i15.LoginRepository(get<_i10.INetworkService>()));
  gh.factory<_i16.LoginController>(
      () => _i16.LoginController(get<_i14.ILoginRepository>()));
  return get;
}

class _$RegisterModule extends _i17.RegisterModule {}

import 'package:code_id_flutter/code_services/storage/storage.dart';
import 'package:flutter_ecommerces/domain/core/i_network_service.dart';
import 'package:flutter_ecommerces/domain/login/i_login_repository.dart';
import 'package:flutter_ecommerces/infrastructure/core/link_connect.dart';
import 'package:flutter_ecommerces/infrastructure/core/utils.dart';
import 'package:flutter_ecommerces/infrastructure/login/login_response/login_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_ecommerces/domain/login/login_failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILoginRepository)
class LoginRepository implements ILoginRepository {
  final INetworkService iNetworkService;
  LoginRepository(this.iNetworkService);
  @override
  Future<Either<LoginFailure, LoginModel>> login(
      String username, String password) async {
    // TODO: implement login
    try {
      final Map<String, dynamic> req = {
        "username": username,
        "password": password,
      };
      var response =
          await iNetworkService.postHttp(path: UrlPath.login, content: req);
      await Future.delayed(const Duration(seconds: 1));
      if (response != null) {
        print("Login success");
        await Storage.openBox(StorageName.box_name);
        Map<String, dynamic> json = response as Map<String, dynamic>;
        Storage.putDanum(key: "token", value: json['token']);
        print("Get String token");
        var tokens = Storage.getData(key: "token");
        print(tokens);
        print("Panjang token");
        print(json['token'].toString().length);
        return right(LoginModel.fromJson(response));
      }
      return left(LoginFailure.invalidLogin());
    } catch (e) {
      return left(LoginFailure.failed());
    }
  }
}

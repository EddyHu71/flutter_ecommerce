import 'package:flutter_ecommerces/domain/core/i_network_service.dart';
import 'package:flutter_ecommerces/domain/core/i_storage.dart';
import 'package:flutter_ecommerces/domain/login/i_login_repository.dart';
import 'package:flutter_ecommerces/infrastructure/core/link_connect.dart';
import 'package:flutter_ecommerces/infrastructure/core/storage_token.dart';
import 'package:flutter_ecommerces/model/login_response/login_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_ecommerces/domain/login/login_failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILoginRepository)
class LoginRepository implements ILoginRepository {
  final INetworkService iNetworkService;
  final IStorage iStorage;
  LoginRepository(this.iNetworkService, this.iStorage);
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
        Map<String, dynamic> json = response as Map<String, dynamic>;
        // storageData.writeToken(json['token']);
        // String token = json['token'];
        // iStorage.putString(key: "token", value: token);
        // final tokens = iStorage.getString(key: "token");
        // print("Panjang token");
        // print(tokens.toString().length);
        return right(LoginModel.fromJson(response));
      }
      return left(LoginFailure.invalidLogin());
    } catch (e) {
      return left(LoginFailure.failed());
    }
  }
}

import 'package:flutter_ecommerces/domain/core/i_network_service.dart';
import 'package:flutter_ecommerces/domain/register/i_register_repository.dart';
import 'package:flutter_ecommerces/domain/register/register_failure.dart';
import 'package:flutter_ecommerces/infrastructure/core/link_connect.dart';
import 'package:injectable/injectable.dart';
import 'package:fpdart/fpdart.dart';


@LazySingleton(as : IRegisterRepository)

class RegisterRepository implements IRegisterRepository {
  final INetworkService iNetworkService;
  RegisterRepository(this.iNetworkService);
  @override
  Future<Either<RegisterFailure, Unit>> register(
    String email, 
    String username, 
    String name, 
    String password) async {
    // TODO: implement register
    try {
      List<String> names = name.split(" ");
      final Map<String, dynamic> req = {
        "username" : username,
        "email" : email,
        "password" : password,
        "name" : {
          "firstname" : names[0],
          "lastname" : names[1]
        }
      };
      var res = await iNetworkService.postHttp(path: UrlPath.register, content : req);
      await Future.delayed(const Duration(seconds : 1));
      if (res != null) {
        print("Register success");
        return right(unit);
      }
      print('Register failed');
      return left(RegisterFailure.invalidRegister());
    } catch (e) {
      return left(RegisterFailure.failed());
    }
  }

}
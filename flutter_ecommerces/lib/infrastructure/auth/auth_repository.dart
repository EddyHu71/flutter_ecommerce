import 'package:code_id_flutter/code_id_flutter.dart';
import 'package:flutter_ecommerces/domain/auth/auth_failure.dart';
import 'package:flutter_ecommerces/domain/auth/i_auth_repository.dart';
import 'package:code_id_flutter/code_services/storage/storage.dart';
import 'package:flutter_ecommerces/infrastructure/core/utils.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  @override
  Future<Either<AuthFailure, Unit>> authToken() async {
    // TODO: implement authToken
    try {
      await Storage.openBox(StorageName.box_name);
      print("Auth success");
      print("Token in iStorage");
      var tokens = await Storage.getData(key: "token");
      print(tokens);
      await Future.delayed(const Duration(seconds: 3));
      if (tokens == null) {
        print("Token null");
        return left(AuthFailure.invalidToken());
      } else {
        return right(unit);
      }
    } catch (e) {
      print("Auth failed");
      print(e);
      // iStorage.deleteString(key : "token");
      return left(AuthFailure.failed());
    }
  }
}

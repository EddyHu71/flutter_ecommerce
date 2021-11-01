import 'package:flutter_ecommerces/domain/auth/auth_failure.dart';
import 'package:flutter_ecommerces/domain/auth/i_auth_repository.dart';
import 'package:flutter_ecommerces/domain/core/i_storage.dart';
import 'package:flutter_ecommerces/infrastructure/core/storage_token.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as : IAuthRepository)

class AuthRepository implements IAuthRepository {
  final IStorage iStorage;
  AuthRepository(this.iStorage);
  @override
  Future<Either<AuthFailure, Unit>> authToken(String token) async {
    // TODO: implement authToken
    try {
      // var tokens = iStorage.getString(key: "token");
      var tokens = await storageData.returnToken();
      print("Token in iStorage");
      print(tokens);
      print("Panjang token ${tokens.length}");
      // print("Token from parameter");
      // print(token);
      await Future.delayed(const Duration(seconds: 3));
      if (tokens == null || token == null) {
        print("Token null");
        // iStorage.deleteString(key: "token");
        storageData.deleteAll();
        return left(AuthFailure.invalidToken());
      } else {
        if (token == tokens && tokens != null) {
          print("Auth success");
          return right(unit);
        }
      }
      print("Auth failed");
      return left(AuthFailure.failed());
    } catch (e) {
      // iStorage.deleteString(key : "token");
      return left(AuthFailure.failed());
    }
  }

}
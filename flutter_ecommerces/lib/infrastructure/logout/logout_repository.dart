import 'package:flutter_ecommerces/domain/logout/i_logout_repository.dart';
import 'package:flutter_ecommerces/infrastructure/core/storage_token.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_ecommerces/domain/logout/logout_failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILogoutRepository)
class LogoutRepository implements ILogoutRepository {
  @override
  Future<Either<LogoutFailure, Unit>> logout() async {
    // TODO: implement logout
    try {
      var res = await storageData.deleteToken();
      print("Res value ${res}");
      if (res == true) {
        print("Success logout");
        return right(unit);
      }
      print("Logout failed");
      return left(LogoutFailure.invalidLogout());
    } catch (e) {
      print("Failed");
      return left(LogoutFailure.failed());
    }
  }
}

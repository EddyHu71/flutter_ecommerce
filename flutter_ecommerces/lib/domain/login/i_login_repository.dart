import 'package:flutter_ecommerces/domain/login/login_failure.dart';
import 'package:flutter_ecommerces/model/login_response/login_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class ILoginRepository {
  Future<Either<LoginFailure, LoginModel>> login(
      String username, String password);
}

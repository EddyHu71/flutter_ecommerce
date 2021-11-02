import 'package:flutter_ecommerces/domain/auth/auth_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> authToken(String token);
}

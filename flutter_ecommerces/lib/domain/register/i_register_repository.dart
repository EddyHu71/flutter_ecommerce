
import 'package:flutter_ecommerces/domain/register/register_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class IRegisterRepository {
  Future<Either<RegisterFailure, Unit>> register(
    String email,
    String username,
    String name,
    String password,
  );
}
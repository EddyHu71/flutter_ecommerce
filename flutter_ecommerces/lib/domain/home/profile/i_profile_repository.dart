import 'package:flutter_ecommerces/domain/home/profile/profile_failure.dart';
import 'package:flutter_ecommerces/model/profile_response/profile_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class IProfileRepository {
  Future<Either<ProfileFailure, ProfileModel>> getProfile(String id);
  Future<Either<ProfileFailure, Unit>> updateProfile(String id);
}

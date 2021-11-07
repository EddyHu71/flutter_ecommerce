import 'package:flutter_ecommerces/domain/core/i_network_service.dart';
import 'package:flutter_ecommerces/domain/profile/i_profile_repository.dart';
import 'package:flutter_ecommerces/domain/profile/profile_failure.dart';
import 'package:flutter_ecommerces/infrastructure/core/link_connect.dart';
import 'package:flutter_ecommerces/infrastructure/profile/profile_response/profile_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final INetworkService iNetworkService;
  ProfileRepository(this.iNetworkService);
  @override
  Future<Either<ProfileFailure, ProfileModel>> getProfile(String id) async {
    // TODO: implement getProfile
    try {
      var res = await iNetworkService.getHttp(path: UrlPath.getProfile + id);
      await Future.delayed(const Duration(seconds: 1));
      print("Res value from getProfile");
      print(res);
      if (res != null) {
        Map<String, dynamic> json = res as Map<String, dynamic>;
        print("Get Profile success");
        print(json);
        print("Profile Model");
        print(ProfileModel.fromJson(json));
        return right(ProfileModel.fromJson(json));
      } else {
          print("Profile failed");
          return left(ProfileFailure.invalidUser());
      }
    } catch (e) {
      print("Catch executed");
      return left(ProfileFailure.failed());
    }
    
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateProfile(
      String id,
      String firstName,
      String lastName,
      String username,
      String email,
      String password) async {
    // TODO: implement updateProfile
    try {
      final Map<String, dynamic> req = {
        "email": email,
        "username": username,
        "password": password,
        "name": {
          "firstname": firstName,
          "lastname": lastName,
        },
      };
      var res = await iNetworkService.putHttp(
          path: UrlPath.updateProfile + id, content: req);
      print("Update profile repository");
      print(res);
      if (res != null) {
        return right(unit);
      }
      print("Update Profile failed");
      return left(ProfileFailure.invalidUpdate());
    } catch (e) {
      return left(ProfileFailure.failed());
    }
  }
}

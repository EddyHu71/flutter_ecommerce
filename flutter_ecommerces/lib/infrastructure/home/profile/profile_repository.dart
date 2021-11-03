import 'package:flutter_ecommerces/domain/core/i_network_service.dart';
import 'package:flutter_ecommerces/domain/home/profile/i_profile_repository.dart';
import 'package:flutter_ecommerces/infrastructure/core/link_connect.dart';
import 'package:flutter_ecommerces/model/profile_response/profile_model/profile_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_ecommerces/domain/home/profile/profile_failure.dart';
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
      await Future.delayed(const Duration(seconds: 3));
      print("Res value from getProfile");
      print(res);
      if (res != null) {
        Map<String, dynamic> json = res as Map<String, dynamic>;
        print("Get Profile success");
        print(json);
        return right(ProfileModel.fromJson(json));
      }
      print("Profile failed");
      return left(ProfileFailure.invalidUser());
    } catch (e) {
      return left(ProfileFailure.failed());
    }
  }
}

import 'package:flutter_ecommerces/domain/home/profile/i_profile_repository.dart';
import 'package:flutter_ecommerces/domain/home/profile/profile_failure.dart';
import 'package:flutter_ecommerces/model/profile_response/profile_model/profile_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileController extends GetxController {
  final IProfileRepository iProfileRepository;
  ProfileController(this.iProfileRepository);
  Rx<Option<Either<ProfileFailure, ProfileModel>>> optionFailOrSuccess =
      none<Either<ProfileFailure, ProfileModel>>().obs;
  Rx<ProfileModel> profileData = ProfileModel().obs;
  Rx<bool> isLoading = false.obs;

  @override
  void onInit() {
    fetchUser("1");
    super.onInit();
  }

  Future<void> fetchUser(String id) async {
    isLoading.value = true;
    print("Fetch User executed");
    Either<ProfileFailure, ProfileModel> res =
        await iProfileRepository.getProfile(id);
    optionFailOrSuccess.value = optionOf(res);
    print("Option Fail or Success Value");
    print(optionFailOrSuccess.value);
    print("Res value");
    print(res);

    isLoading.value = false;
    res.match((l) {
      print("Left Value");
      print(l);
      // return left(ProfileFailure.failed());
    }, (r) {
      print("Right value");
      print(r.name);
      profileData.value = r;
      print("Profile Data");
      print(profileData.value);
      // return right(profileData);
    });
  }
}

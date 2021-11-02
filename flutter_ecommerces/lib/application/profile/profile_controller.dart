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
  Rx<Option<Either<ProfileFailure, ProfileModel>>> optionFailOrSuccess = none<Either<ProfileFailure, ProfileModel>>().obs;
  Rx<ProfileModel> profileData = ProfileModel().obs;
  Rx<bool> isLoading = false.obs;

  Future<void> fetchUser(String id) async {
    isLoading.value = true;
    print("Fetch User executed");
    var res = await iProfileRepository.getProfile(id);
    optionFailOrSuccess.value = optionOf(res);
    print("Option Fail or Success");
    print(optionFailOrSuccess.value);
    isLoading.value = false;
    print("is Loading value");
    print(isLoading.value);
    print(res);
    res.match((l) {
      print("Left");
      // l.maybeMap(
      //   orElse: () => null);
    }, (r) {
      
    });
  }
}

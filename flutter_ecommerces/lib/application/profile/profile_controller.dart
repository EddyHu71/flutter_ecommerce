import 'package:flutter_ecommerces/domain/profile/i_profile_repository.dart';
import 'package:flutter_ecommerces/domain/profile/profile_failure.dart';
import 'package:flutter_ecommerces/domain/profile/profile_objects.dart';
import 'package:flutter_ecommerces/infrastructure/profile/profile_response/profile_model.dart';
import 'package:flutter_ecommerces/presentation/routers/routers.dart';
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
  Rx<bool> isValidated = false.obs;

  Rx<FirstName> firstname = FirstName('').obs;
  Rx<LastName> lastname = LastName('').obs;
  Rx<Username> username = Username('').obs;
  Rx<Email> email = Email('').obs;
  Rx<Password> password = Password('').obs;

  void validated() {
    isValidated.value = firstname.value.isValid() &&
        lastname.value.isValid() &&
        username.value.isValid() &&
        email.value.isValid() &&
        password.value.isValid();
    print("Validated profile ${isValidated.value}");
  }

  FirstName get getFirstName => firstname.value;
  LastName get getLastName => lastname.value;
  Username get getUsername => username.value;
  Email get getEmail => email.value;
  Password get getPassword => password.value;

  void onfirstNameChanged(String input) {
    firstname.value = FirstName(input);
    print("First Name ${firstname.value.isValid()}");
    isValidated();
  }

  void onlastNameChanged(String input) {
    lastname.value = LastName(input);
    print("Last Name ${lastname.value.isValid()}");
    isValidated();
  }

  void onusernameChanged(String input) {
    username.value = Username(input);
    print("Username ${username.value.isValid()}");
    isValidated();
  }

  void onpasswordChanged(String input) {
    password.value = Password(input);
    print("Password ${password.value.isValid()}");
    isValidated();
  }

  void onemailChanged(String input) {
    email.value = Email(input);
    print("Email ${email.value.isValid()}");
    isValidated();
  }

  @override
  void onInit() {
    fetchUser("1");
    print("Init state");
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
      print(r);
      profileData.value = r;
      print("Profile Data");
      print(profileData.value);
      // return right(profileData);
    });
  }

  Future<void> updateUser(String id) async {
    isLoading.value = true;
    print("Update User executed");
    var res = await iProfileRepository.updateProfile(
      id,
      firstname.value.getOrCrash(),
      lastname.value.getOrCrash(),
      username.value.getOrCrash(),
      email.value.getOrCrash(),
      password.value.getOrCrash(),
    );
    print("Res value");
    print(res);
    isLoading.value = false;
    res.match((l) {
      print("Left update profile");
      Get.defaultDialog(
          title: "Update Profile Failed",
          middleText: "Update Profile Failed",
          onConfirm: () async {
            Get.back();
          });
    }, (r) {
      print("Right Update");
      Get.offNamedUntil(Routers.home, (route) => false);
    });
  }
}

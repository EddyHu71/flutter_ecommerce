import 'package:flutter_ecommerces/domain/home/profile/i_profile_repository.dart';
import 'package:flutter_ecommerces/domain/home/profile/profile_failure.dart';
import 'package:flutter_ecommerces/domain/home/profile/profile_objects.dart';
import 'package:flutter_ecommerces/model/profile_response/profile_model.dart';
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
    isValidated.value = firstname.value.isValid() 
    && lastname.value.isValid() 
    && username.value.isValid() 
    && email.value.isValid() 
    && password.value.isValid();
    print("Validated value ${isValidated.value}");
  }

  FirstName get getFirstName => firstname.value;
  LastName get getLastName => lastname.value;
  Username get getUsername => username.value;
  Email get getEmail => email.value;
  Password get getPassword => password.value;

  void onfirstNameChanged(String input) {
    firstname.value = FirstName(input);
    isValidated();
  }

  void onlastNameChanged(String input) {
    lastname.value = LastName(input);
    isValidated();
  }

  void onusernameChanged(String input) {
    username.value = Username(input);
    isValidated();
  }

  void onpasswordChanged(String input) {
    password.value = Password(input);
    isValidated();
  }

  void onemailChanged(String input) {
    email.value = Email(input);
    isValidated();
  }
  
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

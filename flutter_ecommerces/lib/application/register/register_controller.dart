import 'package:flutter_ecommerces/domain/register/i_register_repository.dart';
import 'package:flutter_ecommerces/domain/register/register_objects.dart';
import 'package:flutter_ecommerces/presentation/routers/routers.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterController extends GetxController {
  final IRegisterRepository iRegisterRepository;
  RegisterController(this.iRegisterRepository);

  Rx<Username> username = Username('').obs;
  Rx<Email> email = Email('').obs;
  Rx<Name> name = Name('').obs;
  Rx<Password> password = Password('').obs;
  Rx<ConfirmPassword> confirmPassword = ConfirmPassword('', '').obs;

  Rx<bool> isLoading = false.obs;
  Rx<bool> isValid = false.obs;

  Name get getName => name.value;
  Username get getUsername => username.value;
  Email get getEmail => email.value;

  Password get getPassword => password.value;
  ConfirmPassword get getConfirmPassword => confirmPassword.value;


  void isValidated() {
    isValid.value = name.value.isValid() && username.value.isValid() && email.value.isValid() && password.value.isValid() && confirmPassword.value.isValid();
    print("Validated register");
  }
  void onNameChanged(String input) {
    name.value = Name(input);
    isValidated();
  }

  void onUsernameChanged(String input) {
    username.value = Username(input);
    isValidated();
  }

  void onEmailChanged(String input) {
    email.value = Email(input);
    isValidated();
  }

  void onPasswordChanged(String input) {
    password.value = Password(input);
    isValidated();
  }

  void onConfirmPasswordChanged(String input) {
    confirmPassword.value = ConfirmPassword(password.value.getOrCrash(), input);
    isValidated();
  }

  Future<void> onRegister() async {
    isLoading.value = true;
    print("on Register");

    var res = await iRegisterRepository.register(
      email.value.getOrCrash(), 
      username.value.getOrCrash(),
      name.value.getOrCrash(), 
      password.value.getOrCrash());

    isLoading.value = false;

    res.match((l) {
      print("Left");
      l.maybeMap(
        invalidRegister: (e) =>
        Get.defaultDialog(
          title: "Register failed",
          middleText: "Register failed",
          onConfirm: () async {
            Get.back();
          },
        ),
        usernameTaken: (e) => 
        Get.defaultDialog(
          title: "Register failed",
          middleText: "Username has been taken",
          onConfirm: () async {
            Get.back();
          },
        ),
        emailTaken: (e) => 
        Get.defaultDialog(
          title: "Register Failed",
          middleText: "Email has been taken",
          onConfirm: () async {
            Get.back();
          },
        ),
      orElse: () => null);

    }, (r) {
      print("Right");
      Get.offNamedUntil(Routers.register, (route) => false);
    });
  }
}
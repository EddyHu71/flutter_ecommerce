
import 'package:flutter_ecommerces/domain/login/i_login_repository.dart';
import 'package:flutter_ecommerces/domain/login/login_objects.dart';
import 'package:flutter_ecommerces/presentation/routers/routers.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:injectable/injectable.dart';

@injectable 
class LoginController extends GetxController {
  final ILoginRepository iLoginRepository;
  LoginController(this.iLoginRepository);

  Rx<Username> username = Username('').obs;
  Rx<Password> password = Password('').obs;

  Rx<bool> isValid = false.obs;
  Rx<bool> usernameValid = false.obs;
  Rx<bool> isLoading = false.obs;

  Username get getUsername => username.value;
  Password get getPassword => password.value;

  void isUsernameValid() {
    usernameValid.value = username.value.isValid();
  }

  void validated() {
    isValid.value = username.value.isValid() && password.value.isValid();
  }
  void onUsernameChanged(String input) {
    username.value = Username(input);
    isUsernameValid();
    validated();
  }

  void onPasswordChanged(String input) {
    password.value = Password(input);
    validated();
  }

  Future<void> onLogin() async {
    isLoading.value = true;
    print("On Login");
    var res = await iLoginRepository.login(username.value.getOrCrash(), password.value.getOrCrash());
    isLoading.value = false;
    res.match((l) {
      print("Left");
      Get.defaultDialog(
        title : "Login Failed",
        middleText : "Login failed",
        onConfirm : () {
          Get.back();
        }
      );
    }, (r) {
      print("Right");
      Get.offNamedUntil(Routers.home, (route) => false);
    });
  }
}

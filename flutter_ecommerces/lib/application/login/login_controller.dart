import 'package:flutter_ecommerces/domain/login/i_login_repository.dart';
import 'package:flutter_ecommerces/domain/login/login_objects.dart';
import 'package:flutter_ecommerces/presentation/routers/routers.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginController extends GetxController {
  final ILoginRepository iLoginRepository;
  LoginController(this.iLoginRepository);

  Rx<Username> username = Username('').obs;
  Rx<Password> password = Password('').obs;

  Rx<bool> isLoading = false.obs;
  Rx<bool> isValid = false.obs;

  Username get getUsername => username.value;
  Password get getPassword => password.value;

  void onUsernaemChanged(String input) {
    username.value = Username(input);
    isValidated();
  }

  void onPasswordChanged(String input) {
    password.value = Password(input);
    isValidated();
  }

  void isValidated() {
    isValid.value = username.value.isValid() && password.value.isValid();
  }

  Future<void> onLogin() async {
    isLoading.value = true;
    print("onLogin");
    var res = await iLoginRepository.login(username.value.getOrCrash(), password.value.getOrCrash() );
    isLoading.value = false;

    res.match(
      (l) {
      print("Left");
      Get.defaultDialog(
        title: 'Login Failed',
        middleText: 'Login Failed',
        onConfirm: () async {
          Get.back();
        },
      );
    }, (r) {
      print("Right");
      Get.offNamedUntil(Routers.home, (route) => false);
    });
  }
}
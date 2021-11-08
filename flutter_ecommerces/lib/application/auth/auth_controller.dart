import 'package:code_id_flutter/code_services/storage/storage.dart';
import 'package:flutter_ecommerces/domain/auth/auth_objects.dart';
import 'package:flutter_ecommerces/domain/auth/i_auth_repository.dart';
import 'package:flutter_ecommerces/presentation/routers/routers.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthController extends GetxController {
  final IAuthRepository iAuthRepository;
  AuthController(this.iAuthRepository);
  Rx<Token> token = Token('').obs;

  Rx<bool> isLoading = false.obs;
  Rx<bool> isValid = false.obs;

  Token get getToken => token.value;

  // void onTokenChanged(String input) {
  //   token.value = Token(input);
  //   isTokenValidate();
  // }

  isTokenValidate() {
    isValid.value = token.value.isValid();
  }

  @override
  void onInit() {
    authToken();
    print("Init state fetch API");
    super.onInit();
  }

  Future<void> authToken() async {
    isLoading.value = true;
    var res = await iAuthRepository.authToken();
    print(res);
    isLoading.value = false;

    res.match((l) {
      print("Left");
      Get.offNamedUntil(Routers.onboard, (route) => false);
    }, (r) {
      print("Right");
      Get.offNamedUntil(Routers.home, (route) => false);
    });
  }
}


import 'package:flutter_ecommerces/domain/auth/auth_objects.dart';
import 'package:flutter_ecommerces/domain/auth/i_auth_repository.dart';
import 'package:flutter_ecommerces/domain/core/i_storage.dart';
import 'package:flutter_ecommerces/infrastructure/core/storage_token.dart';
import 'package:flutter_ecommerces/presentation/routers/routers.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthController extends GetxController {
  final IAuthRepository iAuthRepository;
  final IStorage iStorage;
  AuthController(this.iAuthRepository, this.iStorage);
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

  Future<void> authToken() async {
    isLoading.value = true;
    print("Auth Token");
    print(token.value.getOrCrash());
    final tokens = await storageData.returnToken();
    print("Returns authToken");
    print(tokens);
    var res = await iAuthRepository.authToken(tokens);
    print(res);
    isLoading.value = false;

    res.match(
      (l) {
      print("Left");
      Get.offNamedUntil(Routers.onboard, (route) => false);
    }, (r) {
      print("Right");
      Get.offNamedUntil(Routers.home, (route) => false);
    });
  }
}
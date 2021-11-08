import 'package:flutter_ecommerces/domain/logout/i_logout_repository.dart';
import 'package:flutter_ecommerces/presentation/routers/routers.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutController extends GetxController {
  final ILogoutRepository iLogoutRepository;
  LogoutController(this.iLogoutRepository);

  Rx<bool> isLoading = false.obs;

  Future<void> onLogout() async {
    isLoading.value = true;
    print("onLogout");
    var res = await iLogoutRepository.logout();
    isLoading.value = false;
    res.match((l) {
      print("Left logout");
      Get.defaultDialog(
        title: 'Logout Failed',
        middleText: 'Logout Failed',
        onConfirm: () async {
          Get.back();
        },
      );
    }, (r) {
      print("Right logout");
      Get.offNamedUntil(Routers.onboard, (route) => false);
    });
  }
}

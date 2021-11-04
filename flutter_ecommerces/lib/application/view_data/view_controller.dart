import 'package:flutter_ecommerces/domain/view_data/i_view_repository.dart';
import 'package:flutter_ecommerces/domain/view_data/model/view_model.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@injectable
class ViewController extends GetxController {

  final IViewRepository iViewRepository;
  ViewController(this.iViewRepository);
  List<ViewModel> listView = <ViewModel>[].obs;
  Rx<bool> isLoading = false.obs;

  List<ViewModel> get listData => listView;

  Future<void> fetchApi() async {
    isLoading.value = true;
    print("Fetch API executed");
    var res = await iViewRepository.getData();
    isLoading.value = false;
    print("Res value");
    print(res);
    res.match((l) {
      print("Left Fetch API");
    
    }, (r) {
      print("Right Fetch API");
      
    });
  }
}

import 'package:flutter_ecommerces/domain/view_data/i_view_repository.dart';
import 'package:flutter_ecommerces/domain/view_data/model/view_model.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@injectable
class ViewController extends GetxController {
  final IViewRepository iViewRepository;
  ViewController(this.iViewRepository);
  Rx<bool> isLoading = false.obs;
  List<ViewModel> listView = <ViewModel>[].obs;

  @override
  void onInit() {
    fetchApi();
    print("Init state fetch API");
    super.onInit();
  }

  Future<void> fetchApi() async {
    print("Fetch API executed");
    isLoading.value = true;
    var res = await iViewRepository.getData();
    print("Res value");
    print(res);
    isLoading.value = false;
    res.match((l) {
      print("Left Fetch API");
      print(l);
    }, (data) {
      print("Right Fetch API");
      print(data);
      listView = data;
      print("Data");
      print("Panjang List View ${listView.length}");
      print(listView);
      print("Data Right");
      print(data);
    });
  }
}

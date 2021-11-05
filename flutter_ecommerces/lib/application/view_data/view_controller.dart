import 'package:flutter_ecommerces/domain/view_data/i_view_repository.dart';
import 'package:flutter_ecommerces/domain/view_data/model/view_model.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@injectable
class ViewController extends GetxController {
  final IViewRepository iViewRepository;
  ViewController(this.iViewRepository);
  RxList<ViewModel> listView = <ViewModel>[].obs;
  Rx<bool> isLoading = false.obs;

  @override
  void onInit() {
    fetchApi();
    print("Init state fetch API");
    super.onInit();
  }

  Future<void> fetchApi() async {
    print("Fetch API executed");
    var res = await iViewRepository.getData();
    print("Res value");
    print(res);
    res.match((l) {
      print("Left Fetch API");
      print(l);
    }, (data) {
      print("Right Fetch API");
      List<Map<String, dynamic>> json = data as List<Map<String, dynamic>>;
      for (var item in json) {
        listView.add(ViewModel.fromJson(item));
      }
      // listView.value = data;
      print("Panjang List View ${listView.length}");
      print(listView);
      print("Data Right");
      print(data);
      // for (var item in data) {
      //   listView.add(item);
      // }
    });
  }
}

import 'package:flutter_ecommerces/domain/core/i_network_service.dart';
import 'package:flutter_ecommerces/infrastructure/core/link_connect.dart';
import 'package:fpdart/src/either.dart';
import 'package:flutter_ecommerces/domain/view_data/view_failure.dart';
import 'package:flutter_ecommerces/domain/view_data/model/view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_ecommerces/domain/view_data/i_view_repository.dart';

@LazySingleton(as : IViewRepository)

class ViewRepository implements IViewRepository {
  final INetworkService iNetworkService;
  ViewRepository(this.iNetworkService);
  @override
  Future<Either<ViewFailure, ViewModel>> getData() async {
    // TODO: implement getData
    final List<ViewModel> listViewModel;
    try {
      var res = await iNetworkService.getHttp(path: UrlPath.viewData);
      if (res != null) {
        Map<String, dynamic> json = res as Map<String, dynamic>;
        print("Res isn't null in viewdatarepository");
        print(json);
    
        return right(ViewModel.fromJson(json));
      }
      return left(ViewFailure.noData());
    } catch (e) {
      return left(ViewFailure.failed());
    }
  }

}
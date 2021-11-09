import 'dart:convert';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_ecommerces/domain/core/i_network_service.dart';
import 'package:flutter_ecommerces/infrastructure/core/link_connect.dart';
import 'package:flutter_ecommerces/domain/view_data/view_failure.dart';
import 'package:flutter_ecommerces/domain/view_data/model/view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_ecommerces/domain/view_data/i_view_repository.dart';

@LazySingleton(as: IViewRepository)
class ViewRepository implements IViewRepository {
  final INetworkService iNetworkService;
  ViewRepository(this.iNetworkService);
  @override
  Future<Either<ViewFailure, List<ViewModel>>> getData() async {
    // TODO: implement getData
    try {
      List<ViewModel> listViewModel = <ViewModel>[];
      var res = await iNetworkService.getHttp(path: UrlPath.viewData);
      print("Res in View Repository");
      print(res);
      if (res != null) {
        print("Res isn't null");
        // berhenti sampai sini saja, pak.
        List<dynamic> json = res as List<dynamic>;
        // listViewModel = res;
        listViewModel = json.map((e) {
          return ViewModel.fromJson(e);
        }).toList();
        print("Map JSON");
        print(listViewModel);
        return right(listViewModel);
      } else {
        print("View No Data");
        return left(ViewFailure.noData());
      }
    } catch (e) {
      print("View Data Failure");
      print(e);
      return left(ViewFailure.failed());
    }
  }
}

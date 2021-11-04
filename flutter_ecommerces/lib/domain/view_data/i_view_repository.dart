import 'package:flutter_ecommerces/domain/view_data/model/view_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_ecommerces/domain/view_data/view_failure.dart';

abstract class IViewRepository {
  Future<Either<ViewFailure, ViewModel>> getData();
}

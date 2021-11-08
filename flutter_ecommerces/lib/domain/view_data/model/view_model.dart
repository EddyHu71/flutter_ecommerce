import 'package:freezed_annotation/freezed_annotation.dart';

import 'rating.dart';

part 'view_model.freezed.dart';
part 'view_model.g.dart';

@freezed
class ViewModel with _$ViewModel {
  factory ViewModel({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    Rating? rating,
  }) = _ViewModel;

  factory ViewModel.fromJson(Map<String, dynamic> json) =>
      _$ViewModelFromJson(json);
}

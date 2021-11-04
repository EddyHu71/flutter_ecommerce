import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_model.freezed.dart';
part 'view_model.g.dart';

@freezed
class ViewModel with _$ViewModel {
  factory ViewModel({
    int? id,
    String? title,
    String? price,
    String? category,
    String? description,
    String? image,
  }) = _ViewModel;

  factory ViewModel.fromJson(Map<String, dynamic> json) =>
      _$ViewModelFromJson(json);
}

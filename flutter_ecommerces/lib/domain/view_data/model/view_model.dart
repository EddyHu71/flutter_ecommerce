import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_model.freezed.dart';
part 'view_model.g.dart';

@freezed
class ViewModel with _$ViewModel {
  factory ViewModel({
    int? id,
    @JsonKey(name: "title" ) String? title,
    @JsonKey(name: "price" ) String? price,
    @JsonKey(name: "category" ) String? category,
    @JsonKey(name: "description" ) String? description,
    @JsonKey(name: "image" ) String? image,
  }) = _ViewModel;

  factory ViewModel.fromJson(Map<String, dynamic> json) =>
      _$ViewModelFromJson(json);
}

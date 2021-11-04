import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';
import 'name.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  factory ProfileModel({
    int? id,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "username") String? username,
    String? password,
    @JsonKey(name: "name") Name? name,
    Address? address,
    String? phone,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

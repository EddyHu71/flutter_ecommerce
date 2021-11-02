import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_failure.freezed.dart';

@freezed
class ProfileFailure with _$ProfileFailure {
  const factory ProfileFailure.serverError() = _ServerError;
  const factory ProfileFailure.noInternet() = _NoInternet;
  const factory ProfileFailure.invalidUser() = _InvalidLogin;
  const factory ProfileFailure.failed() = _Failed;
}

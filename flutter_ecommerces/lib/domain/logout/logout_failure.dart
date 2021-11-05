import 'package:freezed_annotation/freezed_annotation.dart';
part 'logout_failure.freezed.dart';

@freezed
class LogoutFailure with _$LogoutFailure {
  const factory LogoutFailure.serverError() = _ServerError;
  const factory LogoutFailure.noInternet() = _NoInternet;
  const factory LogoutFailure.invalidLogout() = _InvalidLogin;
  const factory LogoutFailure.invalidToken() = _InvalidUpdateProfile;
  const factory LogoutFailure.failed() = _Failed;
}

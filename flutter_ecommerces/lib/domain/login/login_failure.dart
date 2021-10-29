import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_failure.freezed.dart';

@freezed
class LoginFailure with _$LoginFailure {
  const factory LoginFailure.serverError() = _ServerError;
  const factory LoginFailure.noInternet() = _NoInternet;
  const factory LoginFailure.invalidUsername() = _InvalidUsername;
  const factory LoginFailure.invalidPassword() = _InvaldiPassword;
  const factory LoginFailure.invalidLogin() = _InvalidLogin;
  const factory LoginFailure.failed() = _Failed;
}

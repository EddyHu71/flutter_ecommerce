import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.noInternet() = _NoInternet;
  const factory AuthFailure.invalidToken() = _InvalidLogin;
  const factory AuthFailure.failed() = _Failed;
}

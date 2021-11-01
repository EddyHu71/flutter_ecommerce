import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_failure.freezed.dart';

@freezed
class RegisterFailure with _$RegisterFailure {
  const factory RegisterFailure.serverError() = _ServerError;
  const factory RegisterFailure.noInternet() = _NoInternet;
  const factory RegisterFailure.emailTaken() = _EmailTaken;
  const factory RegisterFailure.usernameTaken() = _UsernameTaken;
  const factory RegisterFailure.invalidUsername() = _InvalidUsername;
  const factory RegisterFailure.invalidName() = _InvalidName;
  const factory RegisterFailure.invalidEmail() = _InvalidEmail;
  const factory RegisterFailure.invalidPassword() = _invalidPassword;
  const factory RegisterFailure.invalidRegister() = _InvalidRegister;
  const factory RegisterFailure.failed() = _Failed;
}

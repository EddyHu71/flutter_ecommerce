import 'package:flutter_ecommerces/domain/core/failures.dart';
import 'package:flutter_ecommerces/domain/core/value_objects.dart';
import 'package:flutter_ecommerces/domain/core/value_validators.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Username extends ValueObject<String> {
  @override
  // TODO: implement value
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    return Username._(
      validateUsername(input),
    );
  }
  const Username._(this.value);
}

class Name extends ValueObject<String> {
  @override
  // TODO: implement value
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    return Name._(
      validateUsername(input),
    );
  }

  const Name._(this.value);
}

class Email extends ValueObject<String> {
  @override
  // TODO: implement value
  final Either<ValueFailure<String>, String> value;

  factory Email(String input) {
    return Email._(
      validateEmail(input),
    );
  }

  const Email._(this.value);
}

class Password extends ValueObject<String> {
  @override
  // TODO: implement value
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input)
    );
  }

  const Password._(this.value);
}

class ConfirmPassword extends ValueObject<String> {
  @override
  // TODO: implement value
  final Either<ValueFailure<String>, String> value;

  factory ConfirmPassword(String firstPassword, String secondPassword) {
    return ConfirmPassword._(
      confirmMatchPassword(
        firstPassword: firstPassword, 
        secondPassword: secondPassword,
         lengthPassword: 4),
    );
  }

  const ConfirmPassword._(this.value);
}

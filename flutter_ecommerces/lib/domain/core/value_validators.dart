import 'package:flutter_ecommerces/domain/core/failures.dart';
import 'package:fpdart/fpdart.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateToken(
  String input,
  int maxLength,
) {
  if (input.length == maxLength) {
    return right(input);
  } else if (input.length < maxLength) {
    return left(ValueFailure.shortToken(failedValue: input));
  } else {
    return left(
      ValueFailure.exceedingLength(
        failedValue: input,
        max: maxLength,
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateEmail(String input) {
  if (!input.contains("@")) {
    return left(ValueFailure.invalidEmail(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 4) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateName(String input) {
  if (input.length >= 2) {
    return right(input);
  } else {
    return left(ValueFailure.invalidName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input.length >= 4) {
    return right(input);
  } else {
    return left(ValueFailure.invalidName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> confirmMatchPassword({
  required String firstPassword,
  required String secondPassword,
  required int lengthPassword,
}) {
  if (secondPassword != null && firstPassword != secondPassword) {
    return left(ValueFailure.confirmationNotMatch(failedValue: secondPassword));
  } else if (secondPassword.length != lengthPassword) {
    return left(ValueFailure.lengthTooShort(
        failedValue: secondPassword, min: lengthPassword));
  }
  return right(secondPassword);
}

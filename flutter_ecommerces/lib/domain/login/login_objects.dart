import 'package:flutter_ecommerces/domain/core/failures.dart';
import 'package:flutter_ecommerces/domain/core/value_objects.dart';
import 'package:flutter_ecommerces/domain/core/value_validators.dart';
import 'package:fpdart/fpdart.dart';

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

class Password extends ValueObject<String> {
  @override
  // TODO: implement value
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}

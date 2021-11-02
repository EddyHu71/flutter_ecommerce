import 'package:flutter_ecommerces/domain/core/failures.dart';
import 'package:flutter_ecommerces/domain/core/value_objects.dart';
import 'package:flutter_ecommerces/domain/core/value_validators.dart';
import 'package:fpdart/src/either.dart';

class Token extends ValueObject<String> {
  @override
  // TODO: implement value
  final Either<ValueFailure<String>, String> value;

  factory Token(String input) {
    return Token._(
      validateToken(input, input.length),
    );
  }

  const Token._(this.value);
}

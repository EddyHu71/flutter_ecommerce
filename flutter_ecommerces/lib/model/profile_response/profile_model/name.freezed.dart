// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
class _$NameTearOff {
  const _$NameTearOff();

  _Name call({String? firstname, String? lastname}) {
    return _Name(
      firstname: firstname,
      lastname: lastname,
    );
  }

  Name fromJson(Map<String, Object?> json) {
    return Name.fromJson(json);
  }
}

/// @nodoc
const $Name = _$NameTearOff();

/// @nodoc
mixin _$Name {
  String? get firstname => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res>;
  $Res call({String? firstname, String? lastname});
}

/// @nodoc
class _$NameCopyWithImpl<$Res> implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  final Name _value;
  // ignore: unused_field
  final $Res Function(Name) _then;

  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
  }) {
    return _then(_value.copyWith(
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NameCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$NameCopyWith(_Name value, $Res Function(_Name) then) =
      __$NameCopyWithImpl<$Res>;
  @override
  $Res call({String? firstname, String? lastname});
}

/// @nodoc
class __$NameCopyWithImpl<$Res> extends _$NameCopyWithImpl<$Res>
    implements _$NameCopyWith<$Res> {
  __$NameCopyWithImpl(_Name _value, $Res Function(_Name) _then)
      : super(_value, (v) => _then(v as _Name));

  @override
  _Name get _value => super._value as _Name;

  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
  }) {
    return _then(_Name(
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Name implements _Name {
  _$_Name({this.firstname, this.lastname});

  factory _$_Name.fromJson(Map<String, dynamic> json) => _$$_NameFromJson(json);

  @override
  final String? firstname;
  @override
  final String? lastname;

  @override
  String toString() {
    return 'Name(firstname: $firstname, lastname: $lastname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Name &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstname, lastname);

  @JsonKey(ignore: true)
  @override
  _$NameCopyWith<_Name> get copyWith =>
      __$NameCopyWithImpl<_Name>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NameToJson(this);
  }
}

abstract class _Name implements Name {
  factory _Name({String? firstname, String? lastname}) = _$_Name;

  factory _Name.fromJson(Map<String, dynamic> json) = _$_Name.fromJson;

  @override
  String? get firstname;
  @override
  String? get lastname;
  @override
  @JsonKey(ignore: true)
  _$NameCopyWith<_Name> get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
class _$ProfileModelTearOff {
  const _$ProfileModelTearOff();

  _ProfileModel call(
      {int? id,
      String? email,
      String? username,
      String? password,
      Name? name,
      Address? address,
      String? phone}) {
    return _ProfileModel(
      id: id,
      email: email,
      username: username,
      password: password,
      name: name,
      address: address,
      phone: phone,
    );
  }

  ProfileModel fromJson(Map<String, Object?> json) {
    return ProfileModel.fromJson(json);
  }
}

/// @nodoc
const $ProfileModel = _$ProfileModelTearOff();

/// @nodoc
mixin _$ProfileModel {
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  Name? get name => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? email,
      String? username,
      String? password,
      Name? name,
      Address? address,
      String? phone});

  $NameCopyWith<$Res>? get name;
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res> implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  final ProfileModel _value;
  // ignore: unused_field
  final $Res Function(ProfileModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $NameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileModelCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(
          _ProfileModel value, $Res Function(_ProfileModel) then) =
      __$ProfileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? email,
      String? username,
      String? password,
      Name? name,
      Address? address,
      String? phone});

  @override
  $NameCopyWith<$Res>? get name;
  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$ProfileModelCopyWithImpl<$Res> extends _$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(
      _ProfileModel _value, $Res Function(_ProfileModel) _then)
      : super(_value, (v) => _then(v as _ProfileModel));

  @override
  _ProfileModel get _value => super._value as _ProfileModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
  }) {
    return _then(_ProfileModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileModel implements _ProfileModel {
  _$_ProfileModel(
      {this.id,
      this.email,
      this.username,
      this.password,
      this.name,
      this.address,
      this.phone});

  factory _$_ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileModelFromJson(json);

  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? username;
  @override
  final String? password;
  @override
  final Name? name;
  @override
  final Address? address;
  @override
  final String? phone;

  @override
  String toString() {
    return 'ProfileModel(id: $id, email: $email, username: $username, password: $password, name: $name, address: $address, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, email, username, password, name, address, phone);

  @JsonKey(ignore: true)
  @override
  _$ProfileModelCopyWith<_ProfileModel> get copyWith =>
      __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileModelToJson(this);
  }
}

abstract class _ProfileModel implements ProfileModel {
  factory _ProfileModel(
      {int? id,
      String? email,
      String? username,
      String? password,
      Name? name,
      Address? address,
      String? phone}) = _$_ProfileModel;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileModel.fromJson;

  @override
  int? get id;
  @override
  String? get email;
  @override
  String? get username;
  @override
  String? get password;
  @override
  Name? get name;
  @override
  Address? get address;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$ProfileModelCopyWith<_ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

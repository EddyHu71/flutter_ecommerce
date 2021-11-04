// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ViewModel _$ViewModelFromJson(Map<String, dynamic> json) {
  return _ViewModel.fromJson(json);
}

/// @nodoc
class _$ViewModelTearOff {
  const _$ViewModelTearOff();

  _ViewModel call(
      {int? id,
      String? title,
      String? price,
      String? category,
      String? description,
      String? image}) {
    return _ViewModel(
      id: id,
      title: title,
      price: price,
      category: category,
      description: description,
      image: image,
    );
  }

  ViewModel fromJson(Map<String, Object?> json) {
    return ViewModel.fromJson(json);
  }
}

/// @nodoc
const $ViewModel = _$ViewModelTearOff();

/// @nodoc
mixin _$ViewModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewModelCopyWith<ViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewModelCopyWith<$Res> {
  factory $ViewModelCopyWith(ViewModel value, $Res Function(ViewModel) then) =
      _$ViewModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      String? price,
      String? category,
      String? description,
      String? image});
}

/// @nodoc
class _$ViewModelCopyWithImpl<$Res> implements $ViewModelCopyWith<$Res> {
  _$ViewModelCopyWithImpl(this._value, this._then);

  final ViewModel _value;
  // ignore: unused_field
  final $Res Function(ViewModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ViewModelCopyWith<$Res> implements $ViewModelCopyWith<$Res> {
  factory _$ViewModelCopyWith(
          _ViewModel value, $Res Function(_ViewModel) then) =
      __$ViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      String? price,
      String? category,
      String? description,
      String? image});
}

/// @nodoc
class __$ViewModelCopyWithImpl<$Res> extends _$ViewModelCopyWithImpl<$Res>
    implements _$ViewModelCopyWith<$Res> {
  __$ViewModelCopyWithImpl(_ViewModel _value, $Res Function(_ViewModel) _then)
      : super(_value, (v) => _then(v as _ViewModel));

  @override
  _ViewModel get _value => super._value as _ViewModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_ViewModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ViewModel implements _ViewModel {
  _$_ViewModel(
      {this.id,
      this.title,
      this.price,
      this.category,
      this.description,
      this.image});

  factory _$_ViewModel.fromJson(Map<String, dynamic> json) =>
      _$$_ViewModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? price;
  @override
  final String? category;
  @override
  final String? description;
  @override
  final String? image;

  @override
  String toString() {
    return 'ViewModel(id: $id, title: $title, price: $price, category: $category, description: $description, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ViewModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, price, category, description, image);

  @JsonKey(ignore: true)
  @override
  _$ViewModelCopyWith<_ViewModel> get copyWith =>
      __$ViewModelCopyWithImpl<_ViewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViewModelToJson(this);
  }
}

abstract class _ViewModel implements ViewModel {
  factory _ViewModel(
      {int? id,
      String? title,
      String? price,
      String? category,
      String? description,
      String? image}) = _$_ViewModel;

  factory _ViewModel.fromJson(Map<String, dynamic> json) =
      _$_ViewModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get price;
  @override
  String? get category;
  @override
  String? get description;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$ViewModelCopyWith<_ViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_constant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderConstantModel _$OrderConstantModelFromJson(Map<String, dynamic> json) {
  return _OrderConstantModel.fromJson(json);
}

/// @nodoc
mixin _$OrderConstantModel {
  num get deliveryCharge => throw _privateConstructorUsedError;
  set deliveryCharge(num value) => throw _privateConstructorUsedError;
  num get discount => throw _privateConstructorUsedError;
  set discount(num value) => throw _privateConstructorUsedError;
  num get vat => throw _privateConstructorUsedError;
  set vat(num value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderConstantModelCopyWith<OrderConstantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderConstantModelCopyWith<$Res> {
  factory $OrderConstantModelCopyWith(
          OrderConstantModel value, $Res Function(OrderConstantModel) then) =
      _$OrderConstantModelCopyWithImpl<$Res, OrderConstantModel>;
  @useResult
  $Res call({num deliveryCharge, num discount, num vat});
}

/// @nodoc
class _$OrderConstantModelCopyWithImpl<$Res, $Val extends OrderConstantModel>
    implements $OrderConstantModelCopyWith<$Res> {
  _$OrderConstantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryCharge = null,
    Object? discount = null,
    Object? vat = null,
  }) {
    return _then(_value.copyWith(
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as num,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderConstantModelImplCopyWith<$Res>
    implements $OrderConstantModelCopyWith<$Res> {
  factory _$$OrderConstantModelImplCopyWith(_$OrderConstantModelImpl value,
          $Res Function(_$OrderConstantModelImpl) then) =
      __$$OrderConstantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num deliveryCharge, num discount, num vat});
}

/// @nodoc
class __$$OrderConstantModelImplCopyWithImpl<$Res>
    extends _$OrderConstantModelCopyWithImpl<$Res, _$OrderConstantModelImpl>
    implements _$$OrderConstantModelImplCopyWith<$Res> {
  __$$OrderConstantModelImplCopyWithImpl(_$OrderConstantModelImpl _value,
      $Res Function(_$OrderConstantModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryCharge = null,
    Object? discount = null,
    Object? vat = null,
  }) {
    return _then(_$OrderConstantModelImpl(
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as num,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderConstantModelImpl implements _OrderConstantModel {
  _$OrderConstantModelImpl(
      {this.deliveryCharge = 0, this.discount = 0, this.vat = 0});

  factory _$OrderConstantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderConstantModelImplFromJson(json);

  @override
  @JsonKey()
  num deliveryCharge;
  @override
  @JsonKey()
  num discount;
  @override
  @JsonKey()
  num vat;

  @override
  String toString() {
    return 'OrderConstantModel(deliveryCharge: $deliveryCharge, discount: $discount, vat: $vat)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderConstantModelImplCopyWith<_$OrderConstantModelImpl> get copyWith =>
      __$$OrderConstantModelImplCopyWithImpl<_$OrderConstantModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderConstantModelImplToJson(
      this,
    );
  }
}

abstract class _OrderConstantModel implements OrderConstantModel {
  factory _OrderConstantModel({num deliveryCharge, num discount, num vat}) =
      _$OrderConstantModelImpl;

  factory _OrderConstantModel.fromJson(Map<String, dynamic> json) =
      _$OrderConstantModelImpl.fromJson;

  @override
  num get deliveryCharge;
  set deliveryCharge(num value);
  @override
  num get discount;
  set discount(num value);
  @override
  num get vat;
  set vat(num value);
  @override
  @JsonKey(ignore: true)
  _$$OrderConstantModelImplCopyWith<_$OrderConstantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

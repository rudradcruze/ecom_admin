// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  String get orderId => throw _privateConstructorUsedError;
  set orderId(String value) => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  set uid(String value) => throw _privateConstructorUsedError;
  @TimeStampConverter()
  Timestamp get orderDate => throw _privateConstructorUsedError;
  @TimeStampConverter()
  set orderDate(Timestamp value) => throw _privateConstructorUsedError;
  num get deliveryCharge => throw _privateConstructorUsedError;
  set deliveryCharge(num value) => throw _privateConstructorUsedError;
  num get discount => throw _privateConstructorUsedError;
  set discount(num value) => throw _privateConstructorUsedError;
  num get vat => throw _privateConstructorUsedError;
  set vat(num value) => throw _privateConstructorUsedError;
  num get grantTotal => throw _privateConstructorUsedError;
  set grantTotal(num value) => throw _privateConstructorUsedError;
  String get orderStatus => throw _privateConstructorUsedError;
  set orderStatus(String value) => throw _privateConstructorUsedError;
  String get streetAddress => throw _privateConstructorUsedError;
  set streetAddress(String value) => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get orderDetails =>
      throw _privateConstructorUsedError;
  set orderDetails(List<Map<String, dynamic>> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {String orderId,
      String uid,
      @TimeStampConverter() Timestamp orderDate,
      num deliveryCharge,
      num discount,
      num vat,
      num grantTotal,
      String orderStatus,
      String streetAddress,
      List<Map<String, dynamic>> orderDetails});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? uid = null,
    Object? orderDate = null,
    Object? deliveryCharge = null,
    Object? discount = null,
    Object? vat = null,
    Object? grantTotal = null,
    Object? orderStatus = null,
    Object? streetAddress = null,
    Object? orderDetails = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
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
      grantTotal: null == grantTotal
          ? _value.grantTotal
          : grantTotal // ignore: cast_nullable_to_non_nullable
              as num,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      streetAddress: null == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      orderDetails: null == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      String uid,
      @TimeStampConverter() Timestamp orderDate,
      num deliveryCharge,
      num discount,
      num vat,
      num grantTotal,
      String orderStatus,
      String streetAddress,
      List<Map<String, dynamic>> orderDetails});
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? uid = null,
    Object? orderDate = null,
    Object? deliveryCharge = null,
    Object? discount = null,
    Object? vat = null,
    Object? grantTotal = null,
    Object? orderStatus = null,
    Object? streetAddress = null,
    Object? orderDetails = null,
  }) {
    return _then(_$OrderModelImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
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
      grantTotal: null == grantTotal
          ? _value.grantTotal
          : grantTotal // ignore: cast_nullable_to_non_nullable
              as num,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      streetAddress: null == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      orderDetails: null == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  _$OrderModelImpl(
      {required this.orderId,
      required this.uid,
      @TimeStampConverter() required this.orderDate,
      required this.deliveryCharge,
      required this.discount,
      required this.vat,
      required this.grantTotal,
      required this.orderStatus,
      required this.streetAddress,
      required this.orderDetails});

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  String orderId;
  @override
  String uid;
  @override
  @TimeStampConverter()
  Timestamp orderDate;
  @override
  num deliveryCharge;
  @override
  num discount;
  @override
  num vat;
  @override
  num grantTotal;
  @override
  String orderStatus;
  @override
  String streetAddress;
  @override
  List<Map<String, dynamic>> orderDetails;

  @override
  String toString() {
    return 'OrderModel(orderId: $orderId, uid: $uid, orderDate: $orderDate, deliveryCharge: $deliveryCharge, discount: $discount, vat: $vat, grantTotal: $grantTotal, orderStatus: $orderStatus, streetAddress: $streetAddress, orderDetails: $orderDetails)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  factory _OrderModel(
      {required String orderId,
      required String uid,
      @TimeStampConverter() required Timestamp orderDate,
      required num deliveryCharge,
      required num discount,
      required num vat,
      required num grantTotal,
      required String orderStatus,
      required String streetAddress,
      required List<Map<String, dynamic>> orderDetails}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  String get orderId;
  set orderId(String value);
  @override
  String get uid;
  set uid(String value);
  @override
  @TimeStampConverter()
  Timestamp get orderDate;
  @TimeStampConverter()
  set orderDate(Timestamp value);
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
  num get grantTotal;
  set grantTotal(num value);
  @override
  String get orderStatus;
  set orderStatus(String value);
  @override
  String get streetAddress;
  set streetAddress(String value);
  @override
  List<Map<String, dynamic>> get orderDetails;
  set orderDetails(List<Map<String, dynamic>> value);
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

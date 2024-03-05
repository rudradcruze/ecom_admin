// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      orderId: json['orderId'] as String,
      uid: json['uid'] as String,
      orderDate:
          const TimeStampConverter().fromJson(json['orderDate'] as Timestamp),
      deliveryCharge: json['deliveryCharge'] as num,
      discount: json['discount'] as num,
      vat: json['vat'] as num,
      grantTotal: json['grantTotal'] as num,
      orderStatus: json['orderStatus'] as String,
      streetAddress: json['streetAddress'] as String,
      orderDetails: (json['orderDetails'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'uid': instance.uid,
      'orderDate': const TimeStampConverter().toJson(instance.orderDate),
      'deliveryCharge': instance.deliveryCharge,
      'discount': instance.discount,
      'vat': instance.vat,
      'grantTotal': instance.grantTotal,
      'orderStatus': instance.orderStatus,
      'streetAddress': instance.streetAddress,
      'orderDetails': instance.orderDetails,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_constant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderConstantModelImpl _$$OrderConstantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderConstantModelImpl(
      deliveryCharge: json['deliveryCharge'] as num? ?? 0,
      discount: json['discount'] as num? ?? 0,
      vat: json['vat'] as num? ?? 0,
    );

Map<String, dynamic> _$$OrderConstantModelImplToJson(
        _$OrderConstantModelImpl instance) =>
    <String, dynamic>{
      'deliveryCharge': instance.deliveryCharge,
      'discount': instance.discount,
      'vat': instance.vat,
    };

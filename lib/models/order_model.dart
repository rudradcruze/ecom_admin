import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecom_admin/utils/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@unfreezed
class OrderModel with _$OrderModel {
  factory OrderModel({
    required String orderId,
    required String uid,
    @TimeStampConverter() required Timestamp orderDate,
    required num deliveryCharge,
    required num discount,
    required num vat,
    required num grantTotal,
    required String orderStatus,
    required String streetAddress,
    required List<Map<String, dynamic>> orderDetails,
}) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
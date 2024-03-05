import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_constant_model.freezed.dart';
part 'order_constant_model.g.dart';

@unfreezed
class OrderConstantModel with _$OrderConstantModel {
  factory OrderConstantModel({
    @Default(0) num deliveryCharge,
    @Default(0) num discount,
    @Default(0) num vat,
  }) = _OrderConstantModel;

  factory OrderConstantModel.fromJson(Map<String, dynamic> json) =>
      _$OrderConstantModelFromJson(json);
}
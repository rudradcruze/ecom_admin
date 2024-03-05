import 'package:ecom_admin/db/db_helper.dart';
import 'package:ecom_admin/models/order_constant_model.dart';
import 'package:ecom_admin/models/order_model.dart';
import 'package:flutter/foundation.dart';

class OrderProvider extends ChangeNotifier {
  OrderConstantModel orderConstantModel = OrderConstantModel();
  List<OrderModel> orderList = [];
  final _db = DbHelper();

  void getAllOrders() {
    _db.getAllOrders().listen((snapshot) {
      orderList = List.generate(snapshot.docs.length,
              (index) => OrderModel.fromJson(snapshot.docs[index].data()));
      notifyListeners();
    });
  }

  OrderModel? findOrderById(String orderId) {
    return orderList.firstWhere((order) => order.orderId == orderId);
  }

  getOrderConstant() {
    _db.getOrderConstants().listen((snapshot) {
      orderConstantModel = OrderConstantModel.fromJson(snapshot.data()!);
      notifyListeners();
    });
  }

  num getDiscountAmount(num subtotal) {
    return ((subtotal * orderConstantModel.discount) / 100).round();
  }

  num getVatAmount(num subtotal) {
    final totalAfterDiscount = subtotal - getDiscountAmount(subtotal);
    return ((totalAfterDiscount * orderConstantModel.vat) / 100).round();
  }

  num getGrantTotal(num subtotal) {
    return (subtotal - getDiscountAmount(subtotal)) + getVatAmount(subtotal);
  }
}
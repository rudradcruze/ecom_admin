import 'package:ecom_admin/models/cart_model.dart';
import 'package:flutter/foundation.dart';

class CartProvider extends ChangeNotifier {
  List<CartModel> cartList = [];

  void setCartList(List<Map<String, dynamic>> mapList) {
    cartList = List.generate(mapList.length, (index) => CartModel.fromJson(mapList[index]));
  }

  num priceWithQuantity(CartModel cartModel) => (cartModel.price * cartModel.quantity);

  num get getCartSubTotal {
    num total = 0;
    for (final cart in cartList) {
      total += priceWithQuantity(cart);
    }
    return total;
  }
}
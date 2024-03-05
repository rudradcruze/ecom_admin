import 'package:ecom_admin/customer_widgets/checkout_headline.dart';
import 'package:ecom_admin/models/app_user_model.dart';
import 'package:ecom_admin/models/cart_model.dart';
import 'package:ecom_admin/models/order_model.dart';
import 'package:ecom_admin/providers/cart_provider.dart';
import 'package:ecom_admin/providers/order_provider.dart';
import 'package:ecom_admin/providers/user_provider.dart';
import 'package:ecom_admin/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({super.key});
  static const String routeName = '/orderDetails';
  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  late String orderId;

  @override
  void didChangeDependencies() {
    orderId = ModalRoute.of(context)?.settings.arguments as String;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final order = Provider.of<OrderProvider>(context, listen: false).findOrderById(orderId);
    var orderDetails = context.read<CartProvider>();
    orderDetails.setCartList(order!.orderDetails);
    var orderUser = context.read<UserProvider>().getAppUserById(order.uid);
    return Scaffold(
      appBar: AppBar(title: const Text('Order Details'),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            buildOrderSummerySection(order),
            buildUserSection(orderUser),
            buildItemSection(orderDetails.cartList),
            buildOrderPaymentSection(
                context,
                orderDetails.getCartSubTotal,
                order
            ),
          ],
        ),
      ),
    );
  }


  Widget buildOrderPaymentSection(context, num subtotal, OrderModel order) {
    var provider = Provider.of<OrderProvider>(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CheckoutHeadline(
              headline: 'Order Payment',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Subtotal',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '$currencySymbol$subtotal',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Delivery Charge',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '$currencySymbol${order.deliveryCharge}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discount(${provider.orderConstantModel.discount}%)',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '-$currencySymbol${provider.getDiscountAmount(subtotal)}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'VAT(${order.vat}%)',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '+$currencySymbol${provider.getVatAmount(subtotal)}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 2.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Grand Total',
                    style:
                    TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$currencySymbol${order.grantTotal}',
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItemSection(List<CartModel> orderDetails) {
    return Card(
      child: Consumer<OrderProvider>(
        builder: (context, provider, child) => Column(
          children: [
            const CheckoutHeadline(
              headline: 'Items',
            ),
            for (final cart in orderDetails)
              ListTile(
                title: Text(cart.productName),
                trailing: Text(
                  '${cart.quantity}x${cart.price}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget buildOrderSummerySection(OrderModel? order) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CheckoutHeadline(
              headline: 'Order Summery',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Order Id',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    order!.orderId,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Order Status',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    order.orderStatus,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Date',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    DateFormat('dd MMM yyyy - hh:mm a').format(order.orderDate.toDate()),
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Address',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    order.streetAddress,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildUserSection(AppUserModel orderUser) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CheckoutHeadline(
              headline: 'User Info',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Name',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '${orderUser.displayName}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    orderUser.email,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            if (orderUser.phone != null) Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Phone',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '${orderUser.phone}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ecom_admin/pages/order_deatils_page.dart';
import 'package:ecom_admin/providers/order_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class ViewOrderPage extends StatelessWidget {
  static const String routeName = '/orders';
  const ViewOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Orders'),),
      body: Consumer<OrderProvider>(
        builder: (context, provider, child) => ListView.builder(
          itemCount: provider.orderList.length,
          itemBuilder: (context, index) {
            final order = provider.orderList[index];
            return ListTile(
              onTap: () => Navigator.pushNamed(context, OrderDetailsPage.routeName, arguments: order.orderId),
              title: Text(order.orderId),
              subtitle: Text('Total: ${order.grantTotal}'),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Products: ${order.orderDetails.length}'),
                  Text(DateFormat('dd/MM/yy - hh:mm a').format(order.orderDate.toDate())),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

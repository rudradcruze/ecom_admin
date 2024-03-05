import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(title: const Text('Order Details'),),
      body: Center(
        child: Text(orderId),
      ),
    );
  }
}

import 'package:ecom_admin/auth/auth_service.dart';
import 'package:ecom_admin/customer_widgets/dashboard_item_view.dart';
import 'package:ecom_admin/pages/launcher_page.dart';
import 'package:ecom_admin/models/dashboard_items.dart';
import 'package:ecom_admin/pages/order_deatils_page.dart';
import 'package:ecom_admin/providers/order_provider.dart';
import 'package:ecom_admin/providers/product_provider.dart';
import 'package:ecom_admin/providers/user_provider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatefulWidget {
  static const String routeName = '/dashboard';

  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  @override
  void didChangeDependencies() {
    Provider.of<ProductProvider>(context, listen: false).getAllCategories();
    Provider.of<ProductProvider>(context, listen: false).getAllProducts();
    Provider.of<OrderProvider>(context, listen: false).getAllOrders();
    Provider.of<OrderProvider>(context, listen: false).getOrderConstant();
    Provider.of<UserProvider>(context, listen: false).getAllUser();
    super.didChangeDependencies();
  }

  @override
  void initState() {
    setupInteractedMessage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            onPressed: () {
              AuthService.logout().then((value) =>
                  Navigator.pushReplacementNamed(
                      context, LauncherPage.routeName));
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: dashboardItemList.length,
        itemBuilder: (context, index) {
          final item = dashboardItemList[index];
          return DashboardItemView(
            item: item,
          );
        },
      ),
    );
  }

  Future<void> setupInteractedMessage() async {
    // Get any messages which caused the application to open from
    // a terminated state.
    RemoteMessage? initialMessage =
    await FirebaseMessaging.instance.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    // Also handle any interaction when the app is in the background via a
    // Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    if (message.data['key'] == 'neworder') {
      final docId = message.data['value'];
      EasyLoading.show(status: 'Redirecting...');
      Future.delayed(const Duration(seconds: 3), () {
        EasyLoading.dismiss();
        Navigator.pushNamed(context, OrderDetailsPage.routeName, arguments: docId);
      });
    }
  }

}

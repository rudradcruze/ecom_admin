import 'package:ecom_admin/auth/auth_service.dart';
import 'package:ecom_admin/customer_widgets/dashboard_item_view.dart';
import 'package:ecom_admin/pages/launcher_page.dart';
import 'package:ecom_admin/models/dashboard_items.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  static const String routeName = '/dashboard';

  const DashboardPage({super.key});

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
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
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
}

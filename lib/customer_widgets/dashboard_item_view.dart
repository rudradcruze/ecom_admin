import 'package:ecom_admin/models/dashboard_items.dart';
import 'package:flutter/material.dart';

class DashboardItemView extends StatelessWidget {
  const DashboardItemView({super.key, required this.item});

  final DashboardItem item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, item.route);
      },
      child: Card(
        surfaceTintColor: Colors.purple,
        shadowColor: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(item.iconData, size: 40, color: Colors.purple.shade300,),
            const SizedBox(height: 10,),
            Text(item.title, style: Theme.of(context).textTheme.titleLarge,),
          ],
        ),
      ),
    );
  }
}

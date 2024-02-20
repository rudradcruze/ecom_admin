import 'package:ecom_admin/pages/category_page.dart';
import 'package:ecom_admin/pages/new_product_page.dart';
import 'package:ecom_admin/pages/view_product_page.dart';
import 'package:flutter/material.dart';

class DashboardItem {
  String title;
  IconData iconData;
  String route;

  DashboardItem({
    required this.title,
    required this.route,
    required this.iconData
  });
}

final dashboardItemList = <DashboardItem>[
  DashboardItem(title: 'Add Product', route: NewProductPage.routeName, iconData: Icons.add),
  DashboardItem(title: 'View Products', route: ViewProductPage.routeName, iconData: Icons.card_giftcard),
  DashboardItem(title: 'Categories', route: CategoryPage.routeName, iconData: Icons.category),
];

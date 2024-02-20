import 'package:ecom_admin/pages/category_page.dart';
import 'package:ecom_admin/pages/dashboard_page.dart';
import 'package:ecom_admin/pages/launcher_page.dart';
import 'package:ecom_admin/pages/login_page.dart';
import 'package:ecom_admin/pages/new_product_page.dart';
import 'package:ecom_admin/pages/view_product_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      builder: EasyLoading.init(),
      initialRoute: LauncherPage.routeName,
      routes: {
        LauncherPage.routeName : (context) => const LauncherPage(),
        LoginPage.routeName : (context) => const LoginPage(),
        DashboardPage.routeName : (context) => const DashboardPage(),
        NewProductPage.routeName : (context) => const NewProductPage(),
        ViewProductPage.routeName : (context) => const ViewProductPage(),
        CategoryPage.routeName : (context) => const CategoryPage(),
      },
    );
  }
}
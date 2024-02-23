import 'package:ecom_admin/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewProductPage extends StatelessWidget {
  static const String routeName = '/viewProduct';
  const ViewProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Product'),),
      body: Consumer<ProductProvider>(
        builder: (context, provider, child) => ListView.builder(
          itemCount: provider.productList.length,
          itemBuilder: (context, index) {
            final product = provider.productList[index];
            return ListTile(
              title: Text(product.productName),
              subtitle: Text('Current stock: ${product.stock}'),
            );
          },
        ),
      ),
    );
  }
}

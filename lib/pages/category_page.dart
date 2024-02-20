import 'package:ecom_admin/providers/product_provider.dart';
import 'package:ecom_admin/utils/widget_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatelessWidget {
  static const String routeName = '/category';

  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        actions: [
          IconButton(
            onPressed: () {
              shoSingleTextInputDialog(
                context: context,
                title: 'New Category',
                hintText: 'Enter category name',
                onSave: (value) {
                  EasyLoading.show(status: 'Please wait...');
                  context.read<ProductProvider>().addCategory(value).then((value) {
                    EasyLoading.dismiss();
                    showMsg(context, 'Category added');
                  });
                },
              );
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Consumer<ProductProvider>(
        builder: (context, provider, child) => provider.categoryList.isEmpty
            ? const Center(
                child: Text('No category found!'),
              )
            : ListView.builder(
                itemCount: provider.categoryList.length,
                itemBuilder: (context, index) {
                  final category = provider.categoryList[index];
                  return ListTile(
                    title: Text(category.name),
                  );
                },
              ),
      ),
    );
  }
}

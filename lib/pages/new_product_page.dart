import 'dart:io';

import 'package:ecom_admin/models/category_model.dart';
import 'package:ecom_admin/models/product_model.dart';
import 'package:ecom_admin/providers/product_provider.dart';
import 'package:ecom_admin/utils/widget_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class NewProductPage extends StatefulWidget {
  static const String routeName = '/newProduct';

  const NewProductPage({super.key});

  @override
  State<NewProductPage> createState() => _NewProductPageState();
}

class _NewProductPageState extends State<NewProductPage> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  final stockController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  CategoryModel? categoryModel;
  String? localImagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Product'),
        actions: [
          IconButton(
            onPressed: _saveProduct,
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            _imageSection(),
            _categorySection(),
            _textFieldSection(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    stockController.dispose();
    super.dispose();
  }

  Widget _imageSection() {
    return Card(
      child: Column(
        children: [
          const SizedBox(
            height: 8.0,
          ),
          localImagePath == null
              ? const Icon(
                  Icons.image,
                  size: 100,
                )
              : Image.file(
                  File(localImagePath!),
                  width: double.infinity,
                  fit: BoxFit.contain,
                  height: 100,
                ),
          const Text(
            'Select Product Image',
            style: TextStyle(color: Colors.blueGrey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    _getProductImage(ImageSource.camera);
                  },
                  icon: const Icon(Icons.camera),
                  label: const Text('Capture'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    _getProductImage(ImageSource.gallery);
                  },
                  icon: const Icon(Icons.photo_library),
                  label: const Text('Capture'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _categorySection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Consumer<ProductProvider>(
          builder: (context, provider, child) =>
              DropdownButtonFormField<CategoryModel>(
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            value: categoryModel,
            hint: const Text('Select a category'),
            isExpanded: true,
            items: provider.categoryList
                .map((category) => DropdownMenuItem<CategoryModel>(
                      value: category,
                      child: Text(category.name),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                categoryModel = value;
              });
            },
            validator: (value) {
              if (value == null) {
                return 'Please select a category';
              }
              return null;
            },
          ),
        ),
      ),
    );
  }

  Widget _textFieldSection() {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Product Name *',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field must not be empty';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 2,
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: 'Product Description',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: priceController,
              decoration: const InputDecoration(
                labelText: 'Product Price',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field must not be empty';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: stockController,
              decoration: const InputDecoration(
                labelText: 'Stock',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field must not be empty';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }

  void _saveProduct() async {
    if (localImagePath == null) {
      showMsg(context, 'Please select a product image');
      return;
    }

    if (formKey.currentState!.validate()) {
      final name = nameController.text;
      final description = descriptionController.text;
      final price = num.parse(priceController.text);
      final stock = num.parse(stockController.text);

      EasyLoading.show(status: 'Please wait...');

      try {
        final downloadUrl =
            await context.read<ProductProvider>().uploadImage(localImagePath!);
        final product = ProductModel(
          productName: name,
          categoryModel: categoryModel!,
          description: description,
          imageUrl: downloadUrl,
          price: price,
          stock: stock,
        );
        print(product);
        await context.read<ProductProvider>().saveProduct(product);
        EasyLoading.dismiss();
        showMsg(context, 'Product Saved');
        _resetFields();
      } catch (error) {
        EasyLoading.dismiss();
        print(error.toString());
      }
    }
  }

  void _getProductImage(ImageSource source) async {
    final xFile =
        await ImagePicker().pickImage(source: source, imageQuality: 60);
    if (xFile != null) {
      setState(() {
        localImagePath = xFile.path;
      });
    }
  }

  void _resetFields() {
    setState(() {
      categoryModel = null;
      localImagePath = null;
      nameController.clear();
      descriptionController.clear();
      priceController.clear();
      stockController.clear();
    });
  }
}

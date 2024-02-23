import 'dart:io';

import 'package:ecom_admin/db/db_helper.dart';
import 'package:ecom_admin/models/product_model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';

class ProductProvider extends ChangeNotifier {
  List<CategoryModel> categoryList = [];
  List<ProductModel> productList = [];
  final _db = DbHelper();

  Future<void> addCategory(String name) async {
    final category = CategoryModel(name);
    await _db.addCategory(category);
  }

  void getAllCategories() {
    _db.getAllCategories().listen((snapshot) {
      categoryList = List.generate(snapshot.docs.length,
          (index) => CategoryModel.fromJson(snapshot.docs[index].data()));
      notifyListeners();
    });
  }

  void getAllProducts() {
    _db.getAllProducts().listen((snapshot) {
      productList = List.generate(snapshot.docs.length,
          (index) => ProductModel.fromJson(snapshot.docs[index].data()));
      notifyListeners();
    });
  }

  Future<String> uploadImage(String localPath) async {
    final imageName = 'Product_${DateTime.now().microsecondsSinceEpoch}';
    final imageRef = FirebaseStorage.instance.ref().child('pictures/$imageName');
    final uploadTask = imageRef.putFile(File(localPath));
    final snapshot = await uploadTask.whenComplete(() => null);
    return await snapshot.ref.getDownloadURL();
  }

  Future<void> saveProduct(ProductModel product) {
    return _db.addProduct(product);
  }
}

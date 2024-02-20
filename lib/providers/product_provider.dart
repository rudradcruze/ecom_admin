import 'package:ecom_admin/db/db_helper.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';

class ProductProvider extends ChangeNotifier {
  List<CategoryModel> categoryList = [];
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
}

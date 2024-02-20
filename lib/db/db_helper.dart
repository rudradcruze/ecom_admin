import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecom_admin/models/category_model.dart';

class DbHelper {
  final _db = FirebaseFirestore.instance;
  final String collectionAdmin = 'Admin';
  final String collectionCategory = 'Categories';

  Future<bool> isAdmin(String uid) async {
    final snapshot = await _db.collection(collectionAdmin).doc(uid).get();
    return snapshot.exists;
  }

  Future<void> addCategory(CategoryModel category) {
    return _db.collection(collectionCategory)
        .add(category.toJson());
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getAllCategories() =>
      _db.collection(collectionCategory).orderBy('name').snapshots();
}
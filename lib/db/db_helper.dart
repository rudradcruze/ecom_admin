import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecom_admin/models/category_model.dart';
import 'package:ecom_admin/models/product_model.dart';

class DbHelper {
  final _db = FirebaseFirestore.instance;
  final String collectionAdmin = 'Admin';
  final String collectionCategory = 'Categories';
  final String collectionProduct = 'Products';
  final String collectionOrder = 'Order';
  final String collectionUser = 'Users';
  final String collectionSettings = 'Settings';
  final String documentOrderConstants = 'OrderConstants';

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

  Stream<QuerySnapshot<Map<String, dynamic>>> getAllProducts() =>
      _db.collection(collectionProduct).snapshots();

  Stream<QuerySnapshot<Map<String, dynamic>>> getAllUsers() =>
      _db.collection(collectionUser).snapshots();

  Stream<DocumentSnapshot<Map<String, dynamic>>> getUserById(String uid) =>
      _db.collection(collectionUser).doc(uid).snapshots();

  Stream<QuerySnapshot<Map<String, dynamic>>> getAllOrders() =>
      _db.collection(collectionOrder).snapshots();

  Stream<DocumentSnapshot<Map<String, dynamic>>> getOrderConstants() =>
      _db.collection(collectionSettings).doc(documentOrderConstants).snapshots();

  Future<void> addProduct(ProductModel product) async {
    final doc = _db.collection(collectionProduct).doc();
    product.productId = doc.id;
    return doc.set(product.toJson());
  }
}
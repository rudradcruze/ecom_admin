import 'package:cloud_firestore/cloud_firestore.dart';

class DbHelper {
  final _db = FirebaseFirestore.instance;
  final String collectionAdmin = 'Admin';

  Future<bool> isAdmin(String uid) async {
    final snapshot = await _db.collection(collectionAdmin).doc(uid).get();
    return snapshot.exists;
  }
}
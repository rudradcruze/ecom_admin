import 'package:ecom_admin/db/db_helper.dart';
import 'package:ecom_admin/models/app_user_model.dart';
import 'package:flutter/foundation.dart';

class UserProvider extends ChangeNotifier {
  List<AppUserModel> userList = [];
  final _db = DbHelper();

  void getAllUser() {
    _db.getAllUsers().listen((snapshot) {
      userList = List.generate(snapshot.docs.length,
              (index) => AppUserModel.fromJson(snapshot.docs[index].data()));
      notifyListeners();
    });
  }

  AppUserModel getAppUserById(String uid) {
    return userList.firstWhere((user) => user.uid == uid);
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecom_admin/utils/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_model.freezed.dart';
part 'app_user_model.g.dart';

@unfreezed
class AppUserModel with _$AppUserModel {
  factory AppUserModel ({
    required String uid,
    required String email,
    String? phone,
    String? imageUrl,
    String? streetAddress,
    String? displayName,
    @TimeStampConverter() Timestamp? userCreationTime,
  }) = _AppUserModel;

  factory AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$AppUserModelFromJson(json);
}
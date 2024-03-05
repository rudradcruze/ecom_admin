import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/category_model.dart';

class CategoryModelConverter implements JsonConverter<CategoryModel, Map<String, dynamic>> {
  const CategoryModelConverter();

  @override
  CategoryModel fromJson(Map<String, dynamic> json) {
    return CategoryModel.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(CategoryModel object) {
    return object.toJson();
  }
}

class TimeStampConverter implements JsonConverter<Timestamp, Timestamp> {
  const TimeStampConverter();
  @override
  Timestamp fromJson(Timestamp json) => json;

  @override
  Timestamp toJson(Timestamp object) => object;

}
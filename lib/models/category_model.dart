class CategoryModel {
  String name;

  CategoryModel(this.name);

  Map<String, dynamic> toJson() => <String, dynamic> {'name' : name};

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(json['name']);
}
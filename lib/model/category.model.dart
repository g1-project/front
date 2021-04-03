import 'package:flutter/widgets.dart';

class CategoryModel {
  final String id;
  final String title;

  CategoryModel({
    this.id = "",
    @required this.title,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['productcategoryid'].toString(),
      title: json['categoryname'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "title": this.title,
    };
  }
}

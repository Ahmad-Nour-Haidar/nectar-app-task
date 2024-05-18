import 'package:flutter/foundation.dart' show immutable;

@immutable
class CategoryModel {
  final String title;
  final String image;

  const CategoryModel({
    required this.image,
    required this.title,
  });
}

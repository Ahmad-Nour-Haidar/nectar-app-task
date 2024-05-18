import 'package:flutter/foundation.dart' show immutable;

@immutable
class BeverageModel {
  final String image;
  final String name;
  final String volume;
  final num price;

  const BeverageModel({
    required this.image,
    required this.name,
    required this.volume,
    required this.price,
  });
}

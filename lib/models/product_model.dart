import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String productName;
  final String elements;
  final String imagePath;

  Product(
      {@required this.id,
      @required this.productName,
      @required this.elements,
      @required this.imagePath});

  Product copyWith({
    String id,
    String productName,
    String elements,
    String imagePath,
  }) {
    return Product(
      id: id ?? this.id,
      productName: productName ?? this.productName,
      elements: elements ?? this.elements,
      imagePath: imagePath ?? this.imagePath,
    );
  }
}

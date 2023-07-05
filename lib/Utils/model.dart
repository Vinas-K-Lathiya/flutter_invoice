import 'package:flutter/cupertino.dart';

class Product {
  final String tital;
  final int price;
  final double quality;
  final String category;
  final List image;
  Product({
    required this.tital,
    required this.price,
    required this.quality,
    required this.category,
    required this.image,
  });
}

class Global {}

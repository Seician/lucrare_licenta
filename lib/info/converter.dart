import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/products_model.dart';

class Converter {
  static Future<Product> getProductFromJson() async {
    final String response = await rootBundle.loadString('assets/products.json');
    final parsedJson = await jsonDecode(response);
    
    return Product.fromJson(parsedJson);
  }
}

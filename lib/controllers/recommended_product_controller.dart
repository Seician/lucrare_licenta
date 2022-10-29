import 'package:flutter_complete_guide/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../data/repository/recommended_product_repo.dart';
import '../models/products_model.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  List<ProductModel> _recommendedProductList = [];

  List<ProductModel> get popularProductList => _recommendedProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  RecommendedProductController({required this.recommendedProductRepo});

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      // the response is a .json type data
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update(); // similar with set state;
    } else {}
  }
}

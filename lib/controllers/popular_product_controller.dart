import 'package:flutter_complete_guide/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../models/products_model.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;

  PopularProductController({required this.popularProductRepo});

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    print(response.body.toString());
    if (response.statusCode == 200) {
      // the response is a .json type data
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      update(); // similar with set state;
    } else {}
  }
}

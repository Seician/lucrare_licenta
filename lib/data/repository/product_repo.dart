import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../api/api_client.dart';

class ProductRepo extends GetxService {
  final ApiClient apiClient;
  ProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    // print("I am repo.................");
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}

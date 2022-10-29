import 'package:flutter_complete_guide/data/api/api_client.dart';
import 'package:flutter_complete_guide/utils/app_constants.dart';
import 'package:get/get.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;

  RecommendedProductRepo({required this.apiClient});
  Future<Response> getRecommendedProductList() async {
    return apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URL);
  }
}

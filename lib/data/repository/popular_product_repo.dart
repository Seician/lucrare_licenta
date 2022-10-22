import 'package:flutter_complete_guide/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});
  Future<Response> getPopularProductList() async {
    return apiClient.getData("end point url");
  }
}

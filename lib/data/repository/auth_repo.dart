import 'package:flutter_complete_guide/data/api/api_client.dart';
import 'package:flutter_complete_guide/models/signup_body_model.dart';
import 'package:flutter_complete_guide/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response> registration(SignUpBody signUpBody) async {
   return await apiClient.post(AppConstants.REGISTRATION_URI, signUpBody.toJson());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/utils/colors.dart';
import 'package:flutter_complete_guide/utils/dimensions.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    print("I am printing loading state" +
        Get.find<AuthController>().isLoading.toString());
    return Center(
      child: Container(
        height: Dimensions.height20 * 5,
        width: Dimensions.height20 * 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.height20 * 5 / 2),
          color: AppColors.mainColor,
        ),
        alignment: Alignment.center,
        child: const CircularProgressIndicator(color: Colors.white),
      ),
    );
  }
}

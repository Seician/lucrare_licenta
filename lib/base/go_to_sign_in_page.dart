import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/colors.dart';
import '../routes/route_helper.dart';
import '../utils/app_dimensions.dart';
import '../widgets/big_text.dart';

class GoToSignInPage extends StatelessWidget {
  const GoToSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Dimensions.screenSizeWidth,
      height: Dimensions.screenSizeHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("img/signintocontinue.png"),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.getSignInRoute());
            },
            child: Container(
              height: 100,
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BigText(
                      text: "Sign in here! ",
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.login,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

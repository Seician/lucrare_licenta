import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../base/custom_image.dart';
import '../../base/go_to_sign_in_page.dart';
import '../../components/colors.dart';
import '../../controllers/auth_controller.dart';
import '../../controllers/cart_controller.dart';
import '../../controllers/location_controller.dart';
import '../../controllers/splash_controller.dart';
import '../../controllers/user_controller.dart';
import '../../routes/route_helper.dart';
import '../../utils/app_dimensions.dart';
import '../../widgets/account_widgets.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  _loadUserInfo() async {
    await Get.find<LocationController>().getAddressList();
    if (Get.find<LocationController>().addressList.isNotEmpty) {
      var address = Get.find<LocationController>().addressList[0];
      await Get.find<LocationController>().saveUserAddress(address);
    } else {
      print("addresslist is empty");
    }
  }

  @override
  Widget build(BuildContext context) {
    bool _isLoggedIn = Get.find<AuthController>().isLoggedIn();
    if (_isLoggedIn && Get.find<LocationController>().addressList.isEmpty) {
      Get.find<UserController>().getUserInfo();
      // Get.find<LocationController>().getAddressList();
      _loadUserInfo();
      print(".........");
    } else {
      print("empty" + _isLoggedIn.toString());
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        backgroundColor: AppColors.mainColor,
      ),
      // backgroundColor: Colors.white10,
      body: Container(
        color: Colors.white10,
        margin: Dimensions.isWeb
            ? EdgeInsets.only(
                left: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
                right: Dimensions.MARGIN_SIZE_EXTRA_LARGE)
            : EdgeInsets.all(0),
        child: GetBuilder<UserController>(builder: (userController) {
          var path =
              '${Get.find<SplashController>().configModel?.baseUrls?.customerImageUrl}'
              '/${(Get.find<UserController>().userInfoModel != null && Get.find<AuthController>().isLoggedIn()) ? Get.find<UserController>().userInfoModel?.image : ''}';
          return (_isLoggedIn)
              ? Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      child: ClipOval(
                          child: CustomImage(
                        image: path,
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                        placeholder: '',
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(75),
                          color: AppColors.mainColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Scrollbar(
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              AccountWidgets(
                                  userController.userInfoModel!.fName,
                                  icon: Icons.person,
                                  backgroundColor: AppColors.mainColor),
                              SizedBox(
                                height: 20,
                              ),
                              AccountWidgets(
                                  userController.userInfoModel!.phone,
                                  icon: Icons.phone,
                                  backgroundColor: AppColors.yellowColor),
                              SizedBox(
                                height: 20,
                              ),
                              AccountWidgets(
                                  userController.userInfoModel!.email,
                                  icon: Icons.email,
                                  backgroundColor: AppColors.yellowColor),
                              SizedBox(
                                height: 20,
                              ),
                              GetBuilder<LocationController>(
                                  builder: (locationController) {
                                if (_isLoggedIn &&
                                    Get.find<LocationController>()
                                        .addressList
                                        .isEmpty) {
                                  return GestureDetector(
                                    onTap: () {
                                      Get.toNamed(
                                          RouteHelper.getAddAddressRoute());
                                    },
                                    child: AccountWidgets(
                                        "Conpletează-ți adresa",
                                        icon: Icons.location_on,
                                        backgroundColor: AppColors.yellowColor),
                                  );
                                } else {
                                  return GestureDetector(
                                    onTap: () {
                                      Get.toNamed(
                                          RouteHelper.getAddAddressRoute());
                                    },
                                    child: AccountWidgets("Adresă",
                                        icon: Icons.location_on,
                                        backgroundColor: AppColors.yellowColor),
                                  );
                                }
                              }),
                              SizedBox(
                                height: 20,
                              ),
                              // AccountWidgets("none",
                              //     icon: Icons.message,
                              //     backgroundColor: Colors.redAccent),
                              SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                  onTap: () {
                                    if (Get.find<AuthController>()
                                        .isLoggedIn()) {
                                      Get.find<AuthController>()
                                          .clearSharedData();
                                      Get.find<CartController>()
                                          .clearCartList();
                                      Get.find<LocationController>()
                                          .clearAddressList();
                                      Get.offAllNamed(
                                          RouteHelper.getInitialRoute());
                                    }
                                  },
                                  child: AccountWidgets("Iesire",
                                      icon: Icons.logout,
                                      backgroundColor: Colors.redAccent)),
                              SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                  onTap: () {
                                    Get.offNamed(
                                        RouteHelper.getUpdateProfile());
                                  },
                                  child: AccountWidgets("Editare",
                                      icon: Icons.edit,
                                      backgroundColor: Colors.redAccent)),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              : GoToSignInPage();
        }),
      ),
    );
  }
}

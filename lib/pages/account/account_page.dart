import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/utils/colors.dart';
import 'package:flutter_complete_guide/utils/dimensions.dart';
import 'package:flutter_complete_guide/widgets/account_widget.dart';
import 'package:flutter_complete_guide/widgets/app_icon.dart';
import 'package:flutter_complete_guide/widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: BigText(
          text: "Profile",
          size: 24,
          color: Colors.white,
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(
          children: [
            //profile icon
            AppIcon(
              icon: Icons.person,
              backgroundColor: AppColors.mainColor,
              iconColor: Colors.white,
              iconSize: Dimensions.height45 + Dimensions.height30,
              size: Dimensions.height15 * 10,
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //name
                    AccountWidget(
                      appIcon: AppIcon(
                          icon: Icons.person,
                          backgroundColor: AppColors.mainColor,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10 * 5 / 2,
                          size: Dimensions.height10 * 5),
                      bigText: BigText(text: "Seician"),
                    ),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    //phone
                    AccountWidget(
                      appIcon: AppIcon(
                          icon: Icons.phone,
                          backgroundColor: Colors.yellow,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10 * 5 / 2,
                          size: Dimensions.height10 * 5),
                      bigText: BigText(text: "0760280712"),
                    ),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    //email
                    AccountWidget(
                      appIcon: AppIcon(
                          icon: Icons.email,
                          backgroundColor: Color.fromARGB(255, 255, 199, 59),
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10 * 5 / 2,
                          size: Dimensions.height10 * 5),
                      bigText: BigText(text: "seician@yahoo.com"),
                    ),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    //address
                    AccountWidget(
                      appIcon: AppIcon(
                          icon: Icons.location_on,
                          backgroundColor: AppColors.yellowCollor,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10 * 5 / 2,
                          size: Dimensions.height10 * 5),
                      bigText: BigText(text: "Cluj"),
                    ),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    //message
                    AccountWidget(
                      appIcon: AppIcon(
                          icon: Icons.message_outlined,
                          backgroundColor: Colors.redAccent,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10 * 5 / 2,
                          size: Dimensions.height10 * 5),
                      bigText: BigText(text: "Mesaje"),
                    ),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    AccountWidget(
                      appIcon: AppIcon(
                          icon: Icons.message_outlined,
                          backgroundColor: Colors.redAccent,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10 * 5 / 2,
                          size: Dimensions.height10 * 5),
                      bigText: BigText(text: "Mesaje"),
                    ),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

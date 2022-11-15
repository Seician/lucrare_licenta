import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/utils/dimensions.dart';

import '../../widgets/app_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: Dimensions.screenHeight * 0.05,
          ),
          //app logo
          Container(
            height: Dimensions.screenHeight * 0.25,
            child: const Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 80,
                backgroundImage: AssetImage("assets/images/logo.jpg"),
              ),
            ),
          ),
          // email
          AppTextField(
            textController: emailController,
            hintText: "Email",
            icon: Icons.email,
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          // password
          AppTextField(
            textController: passwordController,
            hintText: "Password",
            icon: Icons.password_sharp,
          ),
          // name
          SizedBox(
            height: Dimensions.height20,
          ),
          AppTextField(
            textController: nameController,
            hintText: "Name",
            icon: Icons.person,
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          // phone
          AppTextField(
            textController: phoneController,
            hintText: "Phone",
            icon: Icons.phone,
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
        ],
      ),
    );
  }
}

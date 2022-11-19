import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  bool isObscure;
  AppTextField(
      {super.key,
      required this.textController,
      required this.hintText,
      required this.icon,
      this.isObscure = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Dimensions.height20, right: Dimensions.height20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 3,
                spreadRadius: 1,
                offset: const Offset(1, 1),
                color: Colors.grey.withOpacity(0.2))
          ]),
      child: TextField(
        obscureText: isObscure?true:false,
        controller: textController,
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(
              icon,
              color: AppColors.yellowCollor,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                borderSide: const BorderSide(width: 1.0, color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                borderSide:const BorderSide(width: 1.0, color: Colors.white)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius15),
            )),
      ),
    );
  }
}

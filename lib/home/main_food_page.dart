import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/home/food_page_body.dart';
import 'package:flutter_complete_guide/widgets/big_text.dart';
import 'package:flutter_complete_guide/widgets/small_text.dart';

import '../utils/colors.dart';





class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // showing the header
          Container(
            margin: const EdgeInsets.only(top: 45, bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                     BigText(
                      text: "Romania", 
                      color: AppColors.mainColor,
                      ),

                      Row(
                        children: [
                          SmallText(text: "Cluj-Napoca", color: Colors.black54,),
                          const Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor),
                      child: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  )
                ]),
          ),
          // showing the body
          FoodPageBody(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/utils/colors.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          controller: pageController,
          // position parameter will start at 0 and end at itemCount;
          itemCount: 5,
          itemBuilder: ((context, position) {
            return _buildPageItem(
              position,
            );
          })),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(children: [
      Container(
        height: 220,
        margin: const EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? const Color(0xFF69c5df) : Color(0xFF9294cc),
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/food1.jpg"))),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 150,
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
        ),
      ),
    ]);
  }
}

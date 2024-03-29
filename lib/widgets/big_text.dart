import 'package:flutter/material.dart';

import '../utils/dimensions.dart';


/// reusable text widget
class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  BigText(
      {Key? key,
      // the value for color can't be a variable
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      // our variables
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'OpenSans-Regular',
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

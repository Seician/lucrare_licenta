import 'package:flutter/material.dart';

/// reusable text widget
class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;

  SmallText({
    Key? key,
    // the value for color can't be a variable
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.size = 12,
    // this will do the space between lines
    this.height =1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      // our variables
      text,
      style: TextStyle(
        fontFamily: 'OpenSans-Regular',
        color: color,
        fontSize: size,
        height: height,
      ),
    );
  }
}

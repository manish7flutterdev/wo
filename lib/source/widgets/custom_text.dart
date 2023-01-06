import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final text, weight, size, color, center;
  CustomText(
      {@required this.text,
      this.weight = FontWeight.w400,
      this.size = 15.0,
      this.color = Colors.black,
      this.center = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: weight,
        fontSize: size,
        color: color,
      ),
      textAlign: center ? TextAlign.center : TextAlign.left,
    );
  }
}

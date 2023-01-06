import 'package:flutter/material.dart';
import 'package:wo/source/widgets/custom_text.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios),
          CustomText(
            text: "Shreshta 12V",
            weight: FontWeight.bold,
            size: 17.0,
          ),
          Icon(Icons.menu_rounded),
        ],
      ),
    );
  }
}

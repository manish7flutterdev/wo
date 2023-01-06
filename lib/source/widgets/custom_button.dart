import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final Color color;
  final double height;
  final String? text;
  final onTap;
  CustomButton(
      {this.width = 250,
      this.color = Colors.blue,
      this.height = 50,
      @required this.text,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          onTap != null ? onTap() : () {};
        },
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(15)),
          child: Center(
              child: Text(
            text!,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}

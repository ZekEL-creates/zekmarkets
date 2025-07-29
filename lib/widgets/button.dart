import 'package:flutter/material.dart';
import 'package:marketstreetapp/colors/colors.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String identifier;
  final double width;
  final double? height;
  final double? fontSize;

  const Button({
    super.key,
    required this.onPressed,
    required this.identifier,
    required this.width,
    this.height = 60,
    this.fontSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Appcolors.bluegradientDark, Appcolors.bluegradientLight],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          identifier,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:marketstreetapp/colors/colors.dart';

class TextWithButtonRow extends StatelessWidget {
  final String text;
  final String butonText;
  final VoidCallback onTap;
  final MainAxisAlignment mainAxisAlignment;
  const TextWithButtonRow({
    super.key,
    required this.text,
    required this.butonText,
    required this.onTap,
    required this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(text, style: TextStyle(fontSize: 14)),
        GestureDetector(
          onTap: onTap,
          child: Text(
            butonText,
            style: TextStyle(
              color: Appcolors.bluegradientLight,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}

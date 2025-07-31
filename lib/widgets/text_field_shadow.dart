import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final BorderRadius? borderRadius;
  final double? width;
  const Textfield({
    super.key,
    required this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.borderRadius,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
            border: OutlineInputBorder(
              borderRadius:
                  borderRadius ?? BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide.none,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius:
                  borderRadius ?? BorderRadius.all(Radius.circular(12)),
            ),
          ),
        ),
      ),
    );
  }
}

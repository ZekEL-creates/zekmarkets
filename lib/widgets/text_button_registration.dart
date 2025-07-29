import 'package:flutter/material.dart';
import 'package:marketstreetapp/pages/log_in_or_sign_up.dart';

class TextButtonRegistration extends StatelessWidget {
  final Pages currentPage;
  final VoidCallback onPressed;
  final String page;
  final Pages pageName;
  const TextButtonRegistration({
    super.key,
    required this.currentPage,
    required this.onPressed,
    required this.page,
    required this.pageName,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        page,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: currentPage == pageName
              ? Colors.black
              : Colors.black.withOpacity(0.1),
        ),
      ),
    );
  }
}

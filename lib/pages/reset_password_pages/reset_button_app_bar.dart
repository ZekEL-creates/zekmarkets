import 'package:flutter/material.dart';

class ResetButtonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ResetButtonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new),
      ),
      title: Text(
        'Password Reset',
        style: TextStyle(fontWeight: FontWeight.w800),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}

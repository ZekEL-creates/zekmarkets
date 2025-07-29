import 'package:flutter/material.dart';
import 'package:marketstreetapp/colors/colors.dart';
import 'package:marketstreetapp/pages/main_page.dart';

class NavigationMenuIcon extends StatelessWidget {
  const NavigationMenuIcon({
    super.key,
    required this.currentMenu,
    required this.onPressed,
    required this.selectedMenu,
    required this.icon,
  });
  final Menus currentMenu;
  final VoidCallback onPressed;
  final Menus selectedMenu;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: currentMenu == selectedMenu ? Colors.white : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        color: currentMenu == selectedMenu
            ? Appcolors.bluegradientDark
            : Colors.white,
      ),
    );
  }
}

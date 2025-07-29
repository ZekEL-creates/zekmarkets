import 'package:flutter/material.dart';
import 'package:marketstreetapp/colors/colors.dart';

class TabBarBuilder extends StatelessWidget {
  const TabBarBuilder({super.key, required this.tab, required this.controller});

  final List<Widget> tab;
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      dividerHeight: 0,
      labelPadding: EdgeInsets.only(right: 12, left: 0),
      labelColor: Appcolors.bluegradientLight,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(width: 2, color: Appcolors.bluegradientLight),
        insets: EdgeInsets.only(right: 20.0),
      ),
      unselectedLabelColor: Colors.black.withOpacity(0.3),
      controller: controller,
      tabs: tab,
    );
  }
}

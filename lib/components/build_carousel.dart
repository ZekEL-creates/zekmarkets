import 'package:flutter/material.dart';
import 'package:marketstreetapp/widgets/header_text.dart';

class BuildCarousel extends StatelessWidget {
  final PageController controller;
  final List<String> img;
  final List<String> header;
  final List<String> writeup;
  final int currentIndex;
  final void Function(int) changePage;
  const BuildCarousel({
    super.key,
    required this.controller,
    required this.img,
    required this.header,
    required this.writeup,
    required this.currentIndex,
    required this.changePage,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: img.length,
      controller: controller,
      onPageChanged: changePage,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(header[index], style: HeaderText.textStyle()),
            SizedBox(height: 10),
            Text(writeup[index]),
            Container(
              height: 302,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(img[index])),
              ),
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:marketstreetapp/colors/colors.dart';
import 'package:marketstreetapp/components/build_carousel.dart';
import 'package:marketstreetapp/items/lists.dart';
import 'package:marketstreetapp/pages/log_in_or_sign_up.dart';
import 'package:marketstreetapp/widgets/button.dart';

class PageViewCarousel extends StatefulWidget {
  const PageViewCarousel({super.key});

  @override
  State<PageViewCarousel> createState() => _PageViewCarouselState();
}

class _PageViewCarouselState extends State<PageViewCarousel> {
  final PageController _controller = PageController();
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            SizedBox(
              height: 530,
              child: BuildCarousel(
                controller: _controller,
                img: images,
                header: header,
                writeup: writeup,
                currentIndex: currentIndex,
                changePage: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(images.length, (index) {
                  return _genrateDots(index);
                }),
              ),
            ),

            SizedBox(height: 80),

            Button(
              width: MediaQuery.of(context).size.width,
              onPressed: () {
                if (currentIndex < images.length - 1) {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                } else {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return LogInOrSignUp(currentPage: Pages.signup);
                      },
                    ),
                  );
                }
              },
              identifier: 'Continue',
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _genrateDots(index) {
    return Container(
      height: 10,
      width: 10,
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index
            ? Appcolors.bluegradientLight
            : Colors.grey,
      ),
    );
  }
}

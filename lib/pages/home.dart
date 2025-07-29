import 'package:flutter/material.dart';
import 'package:marketstreetapp/components/page_view_carousel.dart';
import 'package:marketstreetapp/pages/log_in_or_sign_up.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return LogInOrSignUp(currentPage: Pages.signup);
                      },
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(right: 25, top: 20),
                  child: Text('Skip'),
                ),
              ),
            ),

            PageViewCarousel(),
          ],
        ),
      ),
    );
  }
}

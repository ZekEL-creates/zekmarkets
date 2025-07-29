import 'package:flutter/material.dart';
import 'package:marketstreetapp/pages/reset_password_pages/create_new_password.dart';
import 'package:marketstreetapp/pages/reset_password_pages/reset_button_app_bar.dart';
import 'package:marketstreetapp/widgets/button.dart';
import 'package:marketstreetapp/widgets/header_text.dart';

class EmailReset extends StatelessWidget {
  const EmailReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResetButtonAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              'Reset link',
              style: HeaderText.textStyle().copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 47,
              ),
            ),
            Text(
              'sent to your',
              style: HeaderText.textStyle().copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 47,
              ),
            ),
            Text(
              'mail address',
              style: HeaderText.textStyle().copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 47,
              ),
            ),
            SizedBox(height: 30),
            Image(image: AssetImage('assets/images/email_reset.png')),
            SizedBox(height: 45),
            Button(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CreateNewPassword()),
                );
              },
              identifier: 'Continue',
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}

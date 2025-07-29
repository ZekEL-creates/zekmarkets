import 'package:flutter/material.dart';
import 'package:marketstreetapp/colors/colors.dart';
import 'package:marketstreetapp/pages/log_in_or_sign_up.dart';

import 'package:marketstreetapp/widgets/button.dart';
import 'package:marketstreetapp/widgets/header_text.dart';
import 'package:marketstreetapp/widgets/text_field_shadow.dart';
import 'package:marketstreetapp/widgets/text_with_button_row.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Text('Create a Free Account', style: HeaderText.textStyle()),
        SizedBox(height: 30),
        Textfield(hint: 'Enter your fullname'),
        SizedBox(height: 16),
        Textfield(hint: 'Enter your email address'),
        SizedBox(height: 16),
        Textfield(hint: 'Create password'),
        SizedBox(height: 16),
        SizedBox(height: 40),
        Button(
          onPressed: () {},
          identifier: 'Create account',
          width: MediaQuery.of(context).size.width,
        ),
        SizedBox(height: 40),
        Center(
          child: TextWithButtonRow(
            text: 'I have an account, ',
            butonText: 'Login',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return LogInOrSignUp(currentPage: Pages.login);
                  },
                ),
              );
            },
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        SizedBox(height: 20),
        Column(
          children: [
            Center(
              child: TextWithButtonRow(
                text: 'By creating an account, you agree, to our, ',
                butonText: 'Terms of',
                onTap: () {},
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Service ',
                      style: TextStyle(
                        color: Appcolors.bluegradientLight,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  TextWithButtonRow(
                    text: 'and, ',
                    butonText: 'Privacy Policy',
                    onTap: () {},
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

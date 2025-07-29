import 'package:flutter/material.dart';
import 'package:marketstreetapp/pages/reset_password_pages/email_reset.dart';
import 'package:marketstreetapp/pages/reset_password_pages/reset_button_app_bar.dart';
import 'package:marketstreetapp/widgets/button.dart';
import 'package:marketstreetapp/widgets/header_text.dart';
import 'package:marketstreetapp/widgets/text_field_shadow.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResetButtonAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('Reset tour password', style: HeaderText.textStyle()),
            SizedBox(height: 35),
            Textfield(hint: 'Enter your email address'),
            SizedBox(height: 40),
            Button(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => EmailReset()));
              },
              identifier: 'Send reset link',
              width: MediaQuery.of(context).size.width / 1.3,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

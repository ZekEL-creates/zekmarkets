import 'package:flutter/material.dart';
import 'package:marketstreetapp/pages/reset_password_pages/reset_button_app_bar.dart';
import 'package:marketstreetapp/widgets/button.dart';
import 'package:marketstreetapp/widgets/header_text.dart';
import 'package:marketstreetapp/widgets/text_field_shadow.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResetButtonAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text('Create new password', style: HeaderText.textStyle()),
            SizedBox(height: 30),
            Textfield(hint: 'Enter your new password'),
            SizedBox(height: 15),
            Textfield(hint: 'Confirm your new password'),
            SizedBox(height: 40),
            Button(
              onPressed: () {},
              identifier: 'Reset',
              width: MediaQuery.of(context).size.width / 1.3,
            ),
          ],
        ),
      ),
    );
  }
}

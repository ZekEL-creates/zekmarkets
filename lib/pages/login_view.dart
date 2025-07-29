import 'package:flutter/material.dart';
import 'package:marketstreetapp/pages/log_in_or_sign_up.dart';
import 'package:marketstreetapp/pages/main_page.dart';
import 'package:marketstreetapp/pages/reset_password_pages/reset_password.dart';
import 'package:marketstreetapp/widgets/button.dart';
import 'package:marketstreetapp/widgets/header_text.dart';
import 'package:marketstreetapp/widgets/text_field_shadow.dart';
import 'package:marketstreetapp/widgets/text_with_button_row.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late Pages currentPage;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50),
          Text('Login to your account', style: HeaderText.textStyle()),
          SizedBox(height: 30),
          Textfield(hint: 'Enter your email address'),
          SizedBox(height: 16),
          Textfield(hint: 'Enter your password'),
          SizedBox(height: 20),
          TextWithButtonRow(
            text: 'Forgotten password? ',
            butonText: 'Reset',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ResetPassword();
                  },
                ),
              );
            },
            mainAxisAlignment: MainAxisAlignment.end,
          ),
          SizedBox(height: 20),
          Button(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return MainPage();
                  },
                ),
              );
            },
            identifier: 'Login',
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(height: 30),
          TextWithButtonRow(
            text: "I dont't have an account?",
            butonText: 'Create',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return LogInOrSignUp(currentPage: Pages.signup);
                  },
                ),
              );
            },
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}

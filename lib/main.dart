import 'package:flutter/material.dart';
import 'package:marketstreetapp/pages/initial_page.dart';
import 'package:marketstreetapp/pages/reset_password_pages/email_reset.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: "CabinetGrotesk",
        scaffoldBackgroundColor: Colors.white,
      ),
      home: InitialPage(),
      debugShowCheckedModeBanner: false,
      routes: {'/reset_link': (context) => EmailReset()},
    ),
  );
}

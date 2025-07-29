import 'package:flutter/material.dart';
import 'package:marketstreetapp/colors/colors.dart';
import 'package:marketstreetapp/pages/home.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  Future<void> loadPage() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return Home();
        },
      ),
    );
  }

  @override
  void initState() {
    loadPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Appcolors.bluegradientLight, Appcolors.bluegradientDark],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Image(image: AssetImage('assets/images/marketstreet.png')),
      ),
    );
  }
}

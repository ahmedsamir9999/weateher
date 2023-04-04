import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather/screen/home%20screen/home_screen.dart';

import '../../const/style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () {
          Navigator.pushReplacement(context , MaterialPageRoute(builder: (context)=> const HomeScreen()));
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: K.primaryColor,
          child: Center(
              child: Image.asset('lib/assets/logo.png'))),
    );
  }
}

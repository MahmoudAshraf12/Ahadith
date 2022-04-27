import 'dart:async';
import 'package:flutter/material.dart';
import '../componets/components.dart';
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      navicateAndFinished(
        context,
        HomePage(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff49C649),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'lib/assets/images/Group 3@3x.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          //Spacer(),
          Container(
            height: 2000.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('lib/assets/images/Group 1@2x.png', height: 200.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

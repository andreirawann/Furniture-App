import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bwaspace/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.restorablePushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 98,
            height: 82,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/logo_light.png',
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              'Space',
              style: whiteTextStyle.copyWith(
                fontSize: 36,
                fontWeight: bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

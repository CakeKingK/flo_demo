import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Get.offAll(MyApp());
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset(
          'images/FLO_Splash-Img3x(1242x2688).png',
          fit: BoxFit.fitHeight,
        ),
        width: MediaQuery.of(context).size.width * MediaQuery.of(context).devicePixelRatio,
        height: MediaQuery.of(context).size.width * MediaQuery.of(context).devicePixelRatio,
      ),
    );
  }
}

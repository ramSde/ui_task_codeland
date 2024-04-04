import 'dart:async';
import 'package:codeland_app/constants/constanst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.offNamed('/login');
    });

    return  Scaffold(
      backgroundColor:Constants.constants.primaryColor, 
      body: Center(
        child: Image.asset(Constants.constants.splashlogo),
      ),
    );
  }
}
import 'package:codeland_app/screens/image_upload.dart';
import 'package:codeland_app/screens/login_screen.dart';
import 'package:codeland_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Constants {
  static var constants = Constants();

  final splashlogo = "assets/images/splash_logo.png";
  final loginlogo = "assets/images/login_logo.png";
  final emptyimage = "assets/images/black_image.png";
  final primaryColor = const Color.fromRGBO(245, 134, 42, 1);

  List<GetPage> pages = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/imageUpload', page: () => ImageUploadScreen()),
  ];

  var textStyle = TextStyle(color: Colors.black,fontWeight: FontWeight.w400);
}

import 'package:codeland_app/constants/constanst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'codeland app ui',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      getPages: Constants.constants.pages,
    );
  }
}

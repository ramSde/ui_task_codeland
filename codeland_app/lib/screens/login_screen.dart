import 'package:codeland_app/constants/constanst.dart';
import 'package:codeland_app/controllers/login_controller.dart';
import 'package:codeland_app/widget/custom_button.dart';
import 'package:codeland_app/widget/custom_textfield.dart';
import 'package:codeland_app/widget/login_page_contact_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
 final controller = Get.put(LoginController());

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                   Constants.constants.loginlogo, 
                    scale: 4,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: usernameController,
                    hintword: "Username",
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: passwordController,
                    hintword: "Password",
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    textcolorr: Colors.white,
                    btnTitle: "Login",
                    ontap: () {
                      controller.login(usernameController.text,passwordController.text);
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                    },
                    backgroundColorbtn: Constants.constants.primaryColor, 
                    width: double.infinity, 
                    height: 50, 
                  ),
                  const SizedBox(height: 20),
                const  detailsWidgetLoginScreen(),
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
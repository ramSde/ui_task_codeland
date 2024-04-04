import 'package:get/get.dart';

class LoginController extends GetxController{

void login(String userName, String passWord) {
    final String username = userName.trim();
    final String password = passWord.trim();

    if (username.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Username and password cannot be empty');
      return;
    }

    // Perform login logic here
    Get.offNamed('/imageUpload');
  }

}
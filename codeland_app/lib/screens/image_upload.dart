import 'dart:io';
import 'package:codeland_app/constants/constanst.dart';
import 'package:codeland_app/controllers/image_upload_controller.dart';
import 'package:codeland_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class ImageUploadScreen extends StatelessWidget {
  final ImageUploadController controller = Get.put(ImageUploadController());

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Upload Image',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 30),
            ),
            SizedBox(height: screenHeight * 0.05),
            Obx(
              () => controller.imageFile != null
                  ? Image.file(
                      controller.imageFile!,
                      width: screenWidth * 0.8,
                      height: screenHeight * 0.4,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      width: screenWidth * 0.8,
                      height: screenHeight * 0.6,
                      color: Colors.white.withOpacity(0.5),
                      child: Image.asset(Constants.constants.emptyimage, scale: 4),
                    ),
            ),
            SizedBox(height: screenHeight * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  height: 40,
                  textcolorr: Colors.white,
                  btnTitle: "Upload",
                  ontap: () {
                    controller.getImageFromGallery();
                  },
                  backgroundColorbtn: Constants.constants.primaryColor,
                  width: MediaQuery.of(context).size.height * 0.15,
                ),
                CustomButton(
                  height: 40,
                  textcolorr: Colors.black,
                  btnTitle: "View",
                  ontap: () {
                    // Show preview of the selected image
                    if (controller.selectedImagePath != null) {
                      Get.dialog(
                        Dialog(
                          child: Image.file(
                            File(controller.selectedImagePath!),
                            width: screenWidth * 0.8,
                            height: screenHeight * 0.6,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    } else {
                      Get.snackbar('Error', 'Please select an image first');
                    }
                  },
                  backgroundColorbtn: Colors.grey,
                  width: MediaQuery.of(context).size.height * 0.15,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

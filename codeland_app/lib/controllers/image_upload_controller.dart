import 'dart:io';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';


class ImageUploadController extends GetxController {
  final _imageFile = Rxn<File>();

  File? get imageFile => _imageFile.value;

  String? selectedImagePath;

  final picker = ImagePicker();

  // Image Picker function to get image from gallery
  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImagePath = pickedFile.path;
      _imageFile.value = File(selectedImagePath!);
    }
  }

  
}

import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class AppUtils {
  static Future<List<String>> getImagesFromGallery() async {
    final pickedFiles = await ImagePicker().pickMultiImage(imageQuality: 80);

    if (pickedFiles.isNotEmpty) {
      List<String> imagePaths = pickedFiles.map((pickedFile) {
        File image = File(pickedFile.path);
        return image.path;
      }).toList();

      return imagePaths;
    } else {
      return [];
    }
  }

  static Future<List<String>> getImagesFromCamera() async {
    final pickedFiles = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 80);

    if (pickedFiles != null) {
      File image = File(pickedFiles.path);
      return [image.path];
    } else {
      return [];
    }
  }

  static String formatDateWithoutTime(DateTime dateTime) {
    final formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(dateTime);
  }
}

// import 'dart:developer';
// import 'dart:io';

// import 'package:image_picker/image_picker.dart';

// Future<File?> pickNewImage(bool gallery) async {
//   // File? primeImage;
//   try {
//     ImagePicker picker = ImagePicker();
//     XFile? pickedFile;

//     if (gallery) {
//       pickedFile = await picker.pickImage(
//         source: ImageSource.gallery,
//       );
//     } else {
//       pickedFile = await picker.pickImage(
//         source: ImageSource.camera,
//       );
//     }
//     if (pickedFile != null) {
//       log("${(await File(pickedFile.path).readAsBytes()).lengthInBytes} 5555555555555555555555");
//       return File(pickedFile.path);
//       /* 
//     var bytes = File(pickedFile.path);
//     var enc = await bytes.readAsBytes();
//     log("${enc.lengthInBytes} 5555555555555555555555");
//     if (enc.lengthInBytes > 37000) {
//       File t = await getCompressedImage(
//           File(pickedFile.path), pickedFile.path + "kk.jpeg");
//       primeImage = t;
//       witToast(Navigation.instance.navigationKey.currentState!.overlay!.context,
//           message: "Selected successfully");
//     } else {
//       primeImage = File(pickedFile.path);
//       witToast(Navigation.instance.navigationKey.currentState!.overlay!.context,
//           message: "Selected successfully");
//     } */
//     } else {
//       return null;
//       /* witToast(Navigation.instance.navigationKey.currentState!.overlay!.context,
//         message: "No Image Selected!"); */
//     }
//   } catch (e) {
//     log(e.toString());
//     return null;
//   }
// }

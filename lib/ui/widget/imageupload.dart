import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:fidemlt/ui/theme/colors.dart';

Widget imageUploadContainer(BuildContext context,
    {required Function showImagePicker, File? imageFile}) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white, width: 4),
      shape: BoxShape.circle,
    ),
    child: InkWell(
      onTap: () => showImagePicker(),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: secondaryColor, width: 2),
          shape: BoxShape.circle,
          image: imageFile != null
              ? DecorationImage(
                  image: FileImage(imageFile!),
                  fit: BoxFit.cover,
                )
              : const DecorationImage(
                  image: NetworkImage(
                      "https://png.pngtree.com/png-clipart/20200819/ourlarge/pngtree-female-avatar-profile-png-image_2326119.jpg")),
        ),
        // child: _imageFile == null
        //     ? const Center(child: )
        //     : null,
      ),
    ),
  );
}

  // Widget _showImagePickerDialog(BuildContext context) {
  //   print("hello");
  //   return Stack(children: [
  //     Positioned(
  //         bottom: 0,
  //         child: Container(
  //           height: 300,
  //           child: Column(
  //             children: [
  //               Row(
  //                 children: [Image.asset('public/images/Camera.png')],
  //               )
  //             ],
  //           ),
  //         )
  //         //   showDialog(
  //         //   context: context,
  //         //   builder: (BuildContext context) {
  //         //     return SimpleDialog(
  //         //       title: const Text('Choose Image'),
  //         //       children: [
  //         //         ListTile(
  //         //           title: const Text('Take Photo'),
  //         //           onTap: () => _pickImage(ImageSource.camera),
  //         //         ),
  //         //         ListTile(
  //         //           title: const Text('Choose from Gallery'),
  //         //           onTap: () => _pickImage(ImageSource.gallery),
  //         //         ),
  //         //       ],
  //         //     )
  //         //   },
  //         // )
  //         )
  //   ]);
  // }

  // Future<void> _pickImage(ImageSource source) async {
  //   final pickedFile = await ImagePicker().pickImage(source: source);
  //   setState(() {
  //     if (pickedFile != null) {
  //       _imageFile = File(pickedFile.path);
  //     }
  //   });
  // }


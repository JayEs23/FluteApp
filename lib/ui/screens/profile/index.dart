import 'package:flutter/material.dart';
import 'package:fidemlt/ui/widget/button/back_navigation.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:fidemlt/ui/widget/imageupload.dart';
import 'package:fidemlt/ui/widget/bottomnav.dart';
import 'widget/profilelist.dart';
import 'widget/logout_alert.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? _imageFile;
  bool showpicker = false;
  bool showlogoutbox = false;

  removeLogOutBox() {
    setState(() {
      showlogoutbox = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: showlogoutbox ? Colors.grey : Colors.white,
      body: Stack(
        children: [
          Positioned(
              left: -300,
              top: -30,
              child: Container(
                  padding: const EdgeInsets.all(300),
                  width: screenWidth + 400,
                  height: screenHeight * 0.3,
                  decoration: const BoxDecoration(
                      color: secondaryColor, shape: BoxShape.circle))),
          Positioned(
              right: -300,
              top: -30,
              child: Container(
                  padding: const EdgeInsets.all(100),
                  width: screenWidth + 400,
                  height: screenHeight * 0.3,
                  decoration: const BoxDecoration(
                      color: secondaryColor, shape: BoxShape.circle))),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 30, right: 10),
            child: Column(children: [
              Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        showlogoutbox = true;
                      });
                    },
                    child: const Text(
                      "Logout",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Work Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  )),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  backNavigation(context, color: Colors.transparent),
                  Transform.translate(
                      offset: const Offset(-25, 15),
                      child: Column(
                        children: [
                          const Text(
                            "Profile",
                            style: TextStyle(color: Colors.white),
                          ),
                          Transform.translate(
                            offset: const Offset(0, 20),
                            child: Column(
                              children: [
                                imageUploadContainer(context,
                                    showImagePicker: showImagePicker,
                                    imageFile: _imageFile),
                                Transform.translate(
                                  offset: const Offset(32, -30),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                        color: secondaryColor,
                                        shape: BoxShape.circle),
                                    child: const Icon(Icons.camera_alt,
                                        size: 12, color: Colors.white),
                                  ),
                                ),
                                Transform.translate(
                                    offset: const Offset(0, -20),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Lekan Kareem",
                                          style: TextStyle(
                                              fontFamily: "Work Sans",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "Lugbe, Abuja",
                                          style: TextStyle(
                                              color: Color(0XFF3F3E3E),
                                              fontFamily: "Work Sans",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          )
                        ],
                      )),
                  const SizedBox()
                ],
              ),
              const SizedBox(height: 30),
              profileList(context)
            ]),
          ),
          bottomNavBar(context, position: 3),
          Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                width: screenWidth,
                height: showpicker ? 300 : 0,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.topRight,
                      child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              showpicker = false;
                            });
                          },
                          child: Image.asset('public/images/deleteicon.png')),
                    ),
                    MaterialButton(
                        onPressed: () {
                          _pickImage(ImageSource.camera);
                          setState(() {
                            showpicker = false;
                          });
                        },
                        child: Row(
                          children: [
                            Image.asset('public/images/Camera.png'),
                            const SizedBox(width: 10),
                            const Text(
                              'Camera',
                              style: TextStyle(
                                  color: Color(0XFF2E3A59),
                                  fontFamily: "Work Sans",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        )),
                    const SizedBox(height: 10),
                    MaterialButton(
                        onPressed: () {
                          _pickImage(ImageSource.gallery);
                          setState(() {
                            showpicker = false;
                          });
                        },
                        child: Row(
                          children: [
                            Image.asset('public/images/gallery.png'),
                            const SizedBox(width: 10),
                            const Text(
                              'Import from gallery',
                              style: TextStyle(
                                  color: Color(0XFF2E3A59),
                                  fontFamily: "Work Sans",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ))
                  ],
                ),
              )),
          LogOutAlert(context,
              showlogoutbox: showlogoutbox, removewidget: removeLogOutBox)
        ],
      ),
    );
  }

  void showImagePicker() {
    setState(() {
      showpicker = true;
    });
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      }
    });
  }
}

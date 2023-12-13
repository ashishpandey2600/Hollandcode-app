import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hollandcodeproffession/presentation/homepage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../model/usermodel.dart';

class CompleteProfile extends StatefulWidget {
  final UserModel userModel;
  final User firebaseUser;

  const CompleteProfile(
      {super.key, required this.userModel, required this.firebaseUser});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  TextEditingController schoolcodeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  TextEditingController hobbiesController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  bool showSpinner = false;
  File? profilepic;
  void showPhotoOptions() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("Upload Profile Picture"),
            content: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text("Select from Gallery"),
                ),
                ListTile(
                  leading: Icon(Icons.camera_alt),
                  title: Text("Take a photo"),
                )
              ],
            ),
          );
        });
  }

  void checkValues() {
    String fullName = nameController.text.trim();

    if (fullName == "") {
      print("Please fill all the fields");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Please fill all the fields"),
        backgroundColor: Colors.red,
      ));
    } else {
      uploadData();
    }
  }

  void uploadData() async {
    setState(() {
      showSpinner = true;
    });
    if (profilepic != null) {
      UploadTask uploadTask = FirebaseStorage.instance
          .ref("profilePicture")
          .child(widget.userModel.uid.toString())
          .putFile(profilepic!);

      TaskSnapshot taskSnapshot = await uploadTask;
      String imageUrl = await taskSnapshot.ref.getDownloadURL();

      widget.userModel.profilepic = imageUrl;
    }

    widget.userModel.fullname = nameController.text.trim();
    widget.userModel.schoolname = schoolController.text.trim();
    widget.userModel.hobbies = hobbiesController.text.trim();
    widget.userModel.location = locationController.text.trim();
    widget.userModel.phone = phoneController.text.trim();
    widget.userModel.gender = genderController.text.trim();
    widget.userModel.age = ageController.text.trim();
    widget.userModel.schoolcode = schoolcodeController.text.trim();

    await FirebaseFirestore.instance
        .collection("users")
        .doc(widget.userModel.uid)
        .set(widget.userModel.toMap())
        .then((value) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Data Uploaded"),
        backgroundColor: Colors.green,
      ));
    });
    setState(() {
      showSpinner = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pink,
        title: const Text("Complete Profile"),
        centerTitle: true,
      ),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              CupertinoButton(
                onPressed: () async {
                  XFile? selectedImage = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  if (selectedImage != null) {
                    File covertedFile = File(selectedImage.path);
                    setState(() {
                      profilepic = covertedFile;
                    });
                    log("Image Selected!");
                  }

                  if (selectedImage != null) {
                    log("Image selected");
                  } else {
                    log("No image Selected!");
                  }
                },
                child: Padding(
                  padding: EdgeInsets.zero,
                  child: CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          (profilepic != null) ? FileImage(profilepic!) : null,
                      backgroundColor: Colors.grey,
                      child: (profilepic == null)
                          ? Icon(
                              Icons.person,
                              size: 60,
                            )
                          : null),
                ),
              ),
              TextField(
                controller: schoolcodeController,
                decoration: const InputDecoration(
                    hintText: "School code given by teacher"),
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(hintText: "Full Name"),
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                controller: schoolController,
                decoration: const InputDecoration(hintText: "School Name"),
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                controller: hobbiesController,
                decoration: const InputDecoration(hintText: "Hobbies"),
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                controller: locationController,
                decoration: const InputDecoration(hintText: "Location"),
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(hintText: "Phone No"),
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                controller: genderController,
                decoration: const InputDecoration(hintText: "Gender"),
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                controller: ageController,
                decoration: const InputDecoration(hintText: "Age"),
              ),
              SizedBox(
                height: 100,
              ),
              CupertinoButton(
                child: Text("Submit"),
                onPressed: () {
                  checkValues();
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => DashboardScreen(
                  //               pageIndex: 0,
                  //               userModel: widget.userModel,
                  //               firebaseUser: widget.firebaseUser,
                  //             )));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Hompage(
                                userModel: widget.userModel,
                              )));
                },
                color: Colors.pink,
              )
            ],
          ),
        )),
      ),
    );
  }
}

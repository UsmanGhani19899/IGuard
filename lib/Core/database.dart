import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iguard/Model/addShift_Model.dart';
import 'package:iguard/Model/user.dart';
import 'package:iguard/Screens/current_shifts.dart';

class Database {
  FirebaseFirestore? _firestore;
  final _auth = FirebaseAuth.instance;
  CollectionReference? collRef;

  initiliase() {
    _firestore = FirebaseFirestore.instance;
    collRef = _firestore!.collection("Users");
  }

  postDetail({
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? addressController,
    TextEditingController? phoneNoController,
    BuildContext? context,
  }) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    userModel.name = nameController!.text;
    userModel.email = user!.email;
    userModel.address = addressController!.text;
    userModel.phoneNo = phoneNoController!.text;
    // userModel.password = passwordController!.text;
    // userModel.confirmpassword = confirmPasswordController!.text;
    await firebaseFirestore
        .collection("Users")
        .doc(user.uid)
        .set(userModel.toMap());
  }

  addShifts({
    String? nameController,
    String? contactInfoController,
    String? lengthOfShiftController,
    String? locationController,
    String? whatToBringController,
    String? earController,
  }) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    AddShiftModel addShiftModel = AddShiftModel();

    addShiftModel.name = nameController!;
    addShiftModel.contactInfo = contactInfoController!;
    addShiftModel.lengthOfShift = lengthOfShiftController!;
    addShiftModel.location = locationController!;
    addShiftModel.whatToBring = whatToBringController!;
    addShiftModel.ear = earController!;

    await firebaseFirestore.collection("Shifts").add(addShiftModel.toMap());
    Get.to(CurrentShifts());
  }
}

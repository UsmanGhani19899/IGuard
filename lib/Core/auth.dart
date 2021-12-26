import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iguard/Core/database.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Auth {
  final _auth = FirebaseAuth.instance;
  Database dataBase = Database();
  String? errorMessage;
  void SignUp({
    String? email,
    String? password,
    TextEditingController? nameController,
    TextEditingController? addressController,
    TextEditingController? phoneNoController,
    BuildContext? context,
    GlobalKey<FormState>? formKey,
  }) async {
    if (formKey!.currentState!.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(email: email!, password: password!)
            .then((value) => {
                  dataBase.postDetail(
                      nameController: nameController,
                      addressController: addressController,
                      phoneNoController: phoneNoController,
                      context: context)
                })
            .catchError((e) {
          Fluttertoast.showToast(msg: e!.message);
        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }
}

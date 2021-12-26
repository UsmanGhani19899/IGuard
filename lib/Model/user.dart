import 'package:flutter/material.dart';

class UserModel {
  String? name;
  String? email;

  String? address;
  String? phoneNo;

  UserModel({
    this.name,
    this.email,
    this.address,
    this.phoneNo,
  });

  factory UserModel.fromMap(map) {
    return UserModel(
      name: map["name"],
      email: map["email"],
      address: map["address"],
      phoneNo: map["phoneNo"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
      "address": address,
      "phoneNo": phoneNo,
    };
  }
}

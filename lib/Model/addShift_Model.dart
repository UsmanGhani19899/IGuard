import 'package:flutter/material.dart';

class AddShiftModel {
  String? name;
  String? contactInfo;
  String? lengthOfShift;
  String? location;
  String? whatToBring;
  String? ear;

  AddShiftModel(
      {this.name,
      this.contactInfo,
      this.lengthOfShift,
      this.location,
      this.whatToBring,
      this.ear});

  factory AddShiftModel.fromMap(map) {
    return AddShiftModel(
        name: map["name"],
        contactInfo: map["contactInfo"],
        lengthOfShift: map["lengthOfShift"],
        location: map["location"],
        whatToBring: map["whatToBring"],
        ear: map["ear"]);
  }

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "contactInfo": contactInfo,
      "lengthOfShift": lengthOfShift,
      "location": location,
      "whatToBring": whatToBring,
      "ear": ear
    };
  }
}

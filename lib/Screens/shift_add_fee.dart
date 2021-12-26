import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Core/database.dart';

class ShiftAddFee extends StatefulWidget {
  final String? nameController;
  final String? phoneNoController;
  final String? shiftlengthController;
  final String? emailController;
  final String? locationController;
  final String? earController;
  final String? whatToBring;
  ShiftAddFee(
      {Key? key,
      this.emailController,
      this.earController,
      this.locationController,
      this.nameController,
      this.phoneNoController,
      this.shiftlengthController,
      this.whatToBring})
      : super(key: key);

  @override
  State<ShiftAddFee> createState() => _ShiftAddFeeState();
}

class _ShiftAddFeeState extends State<ShiftAddFee> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#1A367F"),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CircleAvatar(
              //   radius: 40,
              //   backgroundColor: HexColor("#E1E1E1").withOpacity(0.2),
              //   child: Icon(
              //     Icons.done,
              //     color: Colors.white,
              //     size: 50,
              //   ),
              // ),
              // Text(
              //   "Account",
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontWeight: FontWeight.w500,
              //       fontSize: 27),
              // ),
              Text(
                "Shift Add\nFee!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 27),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 2,
                width: MediaQuery.of(context).size.width * 0.1,
                color: Colors.white,
              ),
              Text(
                "If you want to add the shift. We will charge you 15 not refundable",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  Database().addShifts(
                    contactInfoController: widget.phoneNoController,
                    earController: widget.earController,
                    lengthOfShiftController: widget.shiftlengthController,
                    locationController: widget.locationController,
                    nameController: widget.nameController,
                    whatToBringController: widget.whatToBring,
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Confirm Add Shift",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w700),
                      ),
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: HexColor("#AF1B27"),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

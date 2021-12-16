import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hexcolor/hexcolor.dart';

class AccountAdded extends StatelessWidget {
  const AccountAdded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#1A367F"),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: HexColor("#E1E1E1").withOpacity(0.2),
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              Text(
                "Account",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 27),
              ),
              Text(
                "Successfully Added",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 27),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 2,
                width: MediaQuery.of(context).size.width * 0.12,
                color: Colors.white,
              ),
              Text(
                "Please Let us know if you want\nadd another account",
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
                onTap: () {},
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
                        "Add an other account",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500),
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
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                  child: Text("Skip",
                      style: TextStyle(
                        color: Colors.white,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}

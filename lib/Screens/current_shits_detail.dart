import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:iguard/Screens/SignUp.dart';

class CurrentShiftsDetail extends StatelessWidget {
  const CurrentShiftsDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text(
          "Currents Shifts",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message_outlined,
                  color: HexColor("#AF1B27"),
                )),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        height: MediaQuery.of(context).size.height * 0.61,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Text(
              "ER Registered Nurse",
              style: TextStyle(
                  color: appColors, fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "1540 / 12 hr",
              style: TextStyle(
                  color: HexColor("#AF1B27"),
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 14,
                  color: HexColor("#818181"),
                ),
                Text(
                  "Marina Del Rey, California",
                  style: TextStyle(
                      color: HexColor("#818181"),
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Start Time: 19:00",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "End Time: 07:00",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Orientation Date: 11/15/2021",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.message_outlined,
                      color: HexColor("#AF1B27"),
                    )),
                Text(
                  "Chat with your guard >",
                  style: TextStyle(
                      color: HexColor("#3D3D3D"), fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                // margin: EdgeInsets.only(
                //     left: MediaQuery.of(context).size.height * 0.2),
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2), blurRadius: 4)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.14),
                      child: Text(
                        "Cancel Shift",
                        style: TextStyle(
                            fontSize: 14,
                            color: HexColor("#AF1B27"),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: HexColor("#AF1B27"),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                // margin: EdgeInsets.only(
                //     left: MediaQuery.of(context).size.height * 0.2),
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: HexColor("#AF1B27"),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2), blurRadius: 4)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.14),
                      child: Text(
                        "Complete Shift",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: HexColor("#AF1B27"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Screens/SingUp.dart';
import 'package:iguard/Widgets/appBtn.dart';

class NurseRegister extends StatelessWidget {
  const NurseRegister({Key? key}) : super(key: key);

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
        title: Image(
          image: AssetImage("assets/images/2.png"),
          height: 30,
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
        padding: EdgeInsets.symmetric(vertical: 20),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: MediaQuery.of(context).size.height * 0.55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Text(
              "ER Registered Nurse",
              style: TextStyle(
                  color: appColors, fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "1540 / 12 hr",
              style: TextStyle(
                  color: HexColor("#AF1B27"),
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: HexColor("#818181"),
                  size: 13,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Marina Del Rey, California",
                  style: TextStyle(
                      color: HexColor("#818181"),
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Start Time: 19:00",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "End Time: 7:00",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Orientation Date: 11/15/2021",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.person,
              color: appColors,
              size: 30,
            ),
            Text(
              "0/50",
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: appColors, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            AppBtn(btnName: "Take Shift", onPressed: () {})
          ],
        ),
      ),
    );
  }
}

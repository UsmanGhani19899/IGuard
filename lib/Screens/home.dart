import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Screens/profile.dart';
import 'package:iguard/widgets/bottombar.dart';

class home extends StatefulWidget {
  // const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        centerTitle: true,
        title: Image(
          image: AssetImage("assets/images/logo.png"),
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: HexColor("#AF1B27"),
              ))
        ],
      ),
      backgroundColor: Color(0XFFF2F2F2),
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Text(
                    "Saturday / September 11",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 14, left: 13, right: 12),
                  height: 156,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18, left: 25),
                            child: Text(
                              "ER Registered Nurse",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Color(0XFF1A367F)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 22, right: 18),
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0XFF727C8E)),
                            child: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 11,
                                color: Color(0XFF1A367F),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3, left: 20),
                        child: Text(
                          "\$1540 / 12 hr",
                          style:
                              TextStyle(color: Color(0XFFAF1B27), fontSize: 18),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.location_on,
                              size: 20,
                              color: Color(0XFF818181),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6,
                            ),
                            child: Text(
                              "Marina Del Rey, California",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.person,
                                color: Color(0XFF1A367F),
                              ),
                              Text(
                                "0/50",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0XFF1A367F)),
                              )
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2, left: 17, right: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Start Time: 19:00",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "End Time: 07:00",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Center(
                            child: Text(
                          "Orientation Date: 11/15/2021",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        )),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Screens/home.dart';
import 'package:iguard/widgets/bottombar.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          toolbarHeight: 70,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
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
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 91,
                      child: CircleAvatar(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Maria Snow",
                            style: TextStyle(
                                color: Color(0XFF515C6F),
                                fontSize: 25,
                                fontFamily: "RalewayBold"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "mariasnow@gmail.com",
                              style: TextStyle(
                                  color: Color(0XFF515C6F), fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                      color:
                                          Color(0XFF727C8E).withOpacity(0.4)),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 9, horizontal: 22),
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              onPressed: () {},
                              child: Text(
                                "EDIT UserProfile",
                                style: TextStyle(
                                    color: Color(0XFF515C6F), fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  height: 285,
                  width: 338,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 25, right: 15),
                            child: Container(
                              height: 58,
                              width: 320,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 9),
                                    child: Text(
                                      "IGUARD Balance",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(top: 9),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.arrow_forward_ios),
                                      ))
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 12,
                          child: Divider(
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15, left: 25),
                          child: Container(
                            height: 58,
                            width: 320,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 9),
                                  child: Text(
                                    "Check Current Shift",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 9),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_forward_ios),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                          child: Divider(
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 15),
                          child: Container(
                            height: 58,
                            width: 320,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 9),
                                  child: Text(
                                    "Check Completed Shift",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 9),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_forward_ios),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                          child: Divider(
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15, left: 25),
                          child: Container(
                            height: 58,
                            width: 320,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 9),
                                  child: Text(
                                    "Payment Method",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 9),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_forward_ios),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 171,
                margin: EdgeInsets.only(top: 12),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0XFF1A367F),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: Text("SignUp", style: TextStyle(fontSize: 17)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 13),
                child: Text("Version 4.8.15.16.23.42",
                    style: TextStyle(fontSize: 12, color: Color(0XFF616D8F))),
              )
            ],
          ),
        ),
      ),
    );
  }
}

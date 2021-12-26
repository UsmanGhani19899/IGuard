import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Screens/SignUp.dart';

import 'package:iguard/Widgets/appBtn.dart';

class UserOrEmployee extends StatefulWidget {
  //const UserOrEmployee({Key? key}) : super(key: key);

  @override
  _UserOrEmployeeState createState() => _UserOrEmployeeState();
}

final appColors = HexColor("#1A367F");
TabController? _tabController;

class _UserOrEmployeeState extends State<UserOrEmployee>
    with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.12,
                    bottom: MediaQuery.of(context).size.height * 0.12),
                alignment: Alignment.topCenter,
                child: Image(image: AssetImage("assets/images/logo.png")),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create a\nNew Account",
                      style: TextStyle(
                          color: appColors,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      width: 40,
                      height: 2,
                      decoration: BoxDecoration(color: Colors.pink),
                    ),
                    Text(
                      "For the best experience\nwith IGUARD",
                      style:
                          TextStyle(fontSize: 18, color: HexColor("#1A1A1A")),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  bottom: TabBar(
                      indicatorColor: appColors,
                      unselectedLabelColor: Colors.transparent,
                      controller: _tabController,
                      labelColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            "User",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Employee",
                          ),
                        ),
                      ]),
                ),
              ),
              Expanded(
                  child: TabBarView(controller: _tabController, children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 150, top: 30),
                    // child: AppBtn(
                    //     context,
                    //     Navigator.of(context).pushReplacement(
                    //         MaterialPageRoute(builder: (ctx) => Hi())),
                    //     "User"),
                    child: AppBtn(btnName: "User", onPressed: () {})),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      AppBtn(btnName: "Employer Login", onPressed: () {}),
                      SizedBox(
                        height: 20,
                      ),
                      AppBtn(
                          btnName: "Employer SignUp",
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (ctx) => SignUp()));
                          }),
                    ],
                  ),
                )
              ]))
            ],
          ),
        ),
      ),
    );
  }
}

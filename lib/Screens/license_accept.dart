import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iguard/Screens/SignUp.dart';
import 'package:iguard/Widgets/appBtn.dart';

class LicennseScreen extends StatefulWidget {
  const LicennseScreen({Key? key}) : super(key: key);

  @override
  State<LicennseScreen> createState() => _LicennseScreenState();
}

class _LicennseScreenState extends State<LicennseScreen> {
  bool value = false;
  final appColors = HexColor("#1A367F");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (ctx) => SignUp()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
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
                      "Almost\nThere!",
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
                      "Please read term & conditions\nand let us know by tick the mark",
                      style:
                          TextStyle(fontSize: 18, color: HexColor("#1A1A1A")),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      side: BorderSide(color: appColors),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: this.value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value!;
                        });
                      }),
                  Column(
                    children: [
                      Text("By creating an account, you agree to our"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Text(
                              "Terms of service",
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(" and "),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              AppBtn(btnName: "I Agree", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

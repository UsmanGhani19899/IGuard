import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:iguard/Widgets/text_felds.dart';
import 'package:iguard/widgets/appBtn.dart';

import 'otp_screen.dart';

class Signin extends StatefulWidget {
  // const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

TextEditingController _emailcontroller = TextEditingController();
TextEditingController _passwordcontroller = TextEditingController();
final _formkey = GlobalKey<FormState>();

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Welcome\nBack',
                    style: TextStyle(
                        color: Color(0XFF1A367F),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 20),
                  child: Text(
                    "Continue to Sign In",
                    style: TextStyle(color: Color(0XFF59595C)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Center(
                    child: Text(
                      "Employer Login",
                      style: TextStyle(color: Color(0XFFAF1B27)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        AppTextFields(
                            textFieldName: "Username",
                            hint: "johndoe@mail.com",
                            controller: _emailcontroller),
                        AppTextFields(
                            textFieldName: "Password",
                            hint: "**",
                            controller: _passwordcontroller),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(color: Color(0XFF59595C), fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Forgot()));
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: AppBtn(
                    onPressed: () {},
                    btnName: "Jump In",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 33),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color(0XFF1A367F)),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
